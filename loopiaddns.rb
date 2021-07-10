#!/usr/bin/env ruby
#this is on reika

hosts = %w(
  reika.nevyn.nu
)

class LoopiaDNS
  attr_accessor :hosts, :username, :password
  
  def initialize username, password
    self.username = username
    self.password = password
    self.hosts = []
  end
  def self.publicIP
    `curl -s dns.loopia.se/checkip/checkip.php` =~ /([\d.]+)/
    $1
  end
  
  def renameHosts newIP = nil
    newIP = LoopiaDNS.publicIP if newIP.nil?
    hosts.each {|host|
      puts "[#{renameHost(host, newIP)}] #{host}"
    }
  end
  
  def renameHost host, ip
    `curl -s --user '#{username}:#{password}' "http://dns.loopia.se/XDynDNSServer/XDynDNS.php?hostname=#{host}&myip=#{ip}"`
  end
end

loopi = LoopiaDNS.new("nevyn.nu", "N1h1ndr0n")
loopi.hosts = hosts

loopi.renameHosts
