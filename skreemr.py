#!/usr/bin/env python

"""This script is published under the MIT License

Copyright (c) 2008 Nick Jensen

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE."""

import os, socket, sys, re, urllib, urllib2

socket.setdefaulttimeout(10)

class SimpleWGET(urllib.FancyURLopener):
	'''
	a simple class to download and save files
	'''
	def __init__(self):
		urllib.FancyURLopener.__init__(self)
		urllib._urlopener = self
		
	def fetch(self, url, dst="."):
		self.is_busy = False
		fn = os.sep.join([dst, urllib.unquote_plus(url.split('/').pop())])
		if os.path.isfile(fn):
			print "Skipping... %s already exists!" % fn
			return
		if sys.stdout.isatty():	
			try:
				urllib.urlretrieve(url, fn, 
					lambda nb,bs,fs,url=url,fn=fn: self._reporthook(nb,bs,fs,url,fn) )
				sys.stdout.write('\n')
			except IOError, e:
				print str(e)
			except Exception, e:
				pass
		else:
			urllib.urlretrieve(url, fn)
			

	def _reporthook(self, numblocks, blocksize, filesize, url=None, fn=None):
		fn_disp = fn.strip()
		fn_disp = fn_disp.split(os.sep).pop()
		if len(fn) > 50:
			fn_disp = '%s...%s' % (fn_disp[:35], fn_disp[-10:])
		try:
			percent = min((numblocks*blocksize*100)/filesize, 100)
		except:
			percent = 100
		if numblocks != 0:
			sys.stdout.write('\r')
		if not self.is_busy:
			self.is_busy = True
		sys.stdout.write("%3s%% - Downloading - %s" % (percent,fn_disp))
		sys.stdout.flush()
		
	def http_error_default(self, *args, **kw):
		print "Oops... %s - %s" % (args[2],args[3])


class Skreemr:
	@classmethod
	def search(class_, query):
		starts = ['0','10','20','30','40']
		results = []
		for s in starts:
			url = ""
			if s == '0':
				url = """http://skreemr.com/results.jsp?q=%s&search=SkreemR+Search""" % (urllib.quote_plus(query))
			else:
				url = """http://skreemr.com/results.jsp?q=%s&l=10&s=%s""" % (urllib.quote_plus(query), s)
			headers = {
				'Host':'skreemr.com',
				'User-Agent':'Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en-US; rv:1.8.1.11) Gecko/20071127 Firefox/2.0.0.11',
				'Accept':'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8',
				'Accept-Language':'en-us,en;q=0.5',
				'Accept-Encoding':'gzip,deflate',
				'Accept-Charset':'ISO-8859-1,utf-8;q=0.7,*;q=0.7',
				'Keep-Alive':'300',
				'Connection':'keep-alive',
				'Cookie':''
			}
			req = urllib2.Request(url, None, headers)
			html = urllib2.urlopen(req).read()
			mediafiles = re.compile(r'http:\/\/.*?\.mp3')
			results += mediafiles.findall(html)
		return results


def strip_and_tolower(url):
	strip = re.compile('[^\w]', re.IGNORECASE)
	return strip.sub('', urllib.unquote_plus(url.lower()))


if __name__ == "__main__":
	term = sys.argv[1]
	#try:
	mediafiles = Skreemr.search("""%s""" % term)
	download_dir = "./skreemr"
	if not os.path.isdir(download_dir):
		os.mkdir(download_dir)
	if not os.path.isdir(download_dir + os.sep + term):
		os.mkdir(download_dir + os.sep + term)
	
	wget = SimpleWGET()
	for mp3 in mediafiles:
		try:
			wget.fetch(mp3, download_dir + os.sep + term)
		except:
			if wget.is_busy:
				print "\nCaught signal, skipping track..."
			else:
				print "\nExiting..."
				break
	#except:
	#	print "Bye."
