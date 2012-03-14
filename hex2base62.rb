#!/usr/bin/env ruby

SIXTYTWO = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'

hex = ARGV[0]
value = hex.to_i(16)

result = ''
while value > 0
  result << SIXTYTWO[value.modulo(62)]
  value /= 62
end

puts result.reverse