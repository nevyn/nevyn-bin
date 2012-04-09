#!/usr/bin/env python
import os, re, subprocess, sys




class ColorHelper:
    """
    Helper to handle colors.
    """
    OKBLUE = '\033[94m'
    OKGREEN = '\033[92m'
    FAILRED = '\033[91m'
    ENDC = '\033[0m'

    def disable(self):
        self.OKBLUE = ''
        self.OKGREEN = ''
        self.FAILRED = ''
        self.ENDC = ''

# Instantiation of global colorizer
colorizer = ColorHelper()

def find_png_files(directory):
    """
    Helper to find png files.
    """

    def find_png_files2(png_files, directory, files):
        for filename in files:
            path, extension = os.path.splitext(filename)
            if extension == '.png':
                png_files.append("%s/%s"%(directory,filename))

    png_files = []
    os.path.walk(directory, find_png_files2, png_files)
    return png_files


def validate_image(filename):
    """
    Validates high-res version of supplied image basename.
    """

    full_hires = "%s@2x.png"%filename
    hires_info = subprocess.Popen(("file", "%s" % full_hires), stdout = subprocess.PIPE).communicate()[0]

    hires_match = re.search(' ([0-9]*) x ([0-9]*),', hires_info)
    hires_width = int(hires_match.group(1))
    hires_height = int(hires_match.group(2))

    full_lowres = "%s.png"%filename
    lowres_info = subprocess.Popen(("file", "%s" % full_lowres), stdout = subprocess.PIPE).communicate()[0]

    lowres_match = re.search(' ([0-9]*) x ([0-9]*),', lowres_info)
    lowres_width = int(lowres_match.group(1))
    lowres_height = int(lowres_match.group(2))

    if lowres_width * 2 == hires_width and lowres_height * 2 == hires_height:
        print colorizer.OKGREEN + "%s.png has a correct hi-res version" % filename + colorizer.ENDC
    else:
        print colorizer.FAILRED + "%s@2x.png is an incorrect hi-res version:" % filename
        print "\t (%d,%d), @2x:(%d,%d)" % (lowres_width,lowres_height,hires_width,hires_height)
        if lowres_width * 2 != hires_width:
            print "\twidth is %d but should be: %d" %(hires_width, lowres_width*2)
        if lowres_height * 2 != hires_height:
            print "\theight is: %d but should be: %d" %(hires_height, lowres_height*2)            
        print colorizer.ENDC

def main():
    # Disable color if nocol argument is passed
    for arg in sys.argv[1:]:
        nocolor = re.search('nocol', arg)
        if (nocolor != None):
            colorizer.disable()
    
    
    # Get all the png files recursively from this directory
    pngfiles = find_png_files(".")
    
    lowres_filenames = []
    hires_filenames = []
    
    # Sort the files into high res and low res
    for filename in pngfiles:
        base_filename = re.search('(.*).png', filename).group(1)
        m = re.search('(.*)@2x', base_filename)
        if m:
            hires_filenames.append(m.group(1))
        else:
            lowres_filenames.append(base_filename)
    
    # Sort them
    lowres_filenames.sort()
    hires_filenames.sort()
    
    filtered_hires_filenames = []
    # Remove duplicates, warn if only hi-res version exists
    for hires_file in hires_filenames:
        try:
            lowres_filenames.remove(hires_file)
            filtered_hires_filenames.append(hires_file)
        except:
            print colorizer.FAILRED + "%s@2x.png has no low-res version." % hires_file + colorizer.ENDC
    hires_filenames = filtered_hires_filenames
    
    # Warn if no hi-res version exists
    for lowres_filename in lowres_filenames:
        print colorizer.OKBLUE + "%s.png has no hi-res version" % lowres_filename + colorizer.ENDC
    
    # Validate existing low-res, hi-res pairs
    for hires_file in hires_filenames:
        validate_image(hires_file)
    


if __name__ == '__main__':
    main()
