#!/usr/bin/ruby
require 'json'

=begin
File.open("../env.conf", "r") do |aFile|
    aFile.each_line do |line|
        puts line
    end
end
=end

f = IO.read("../env.conf")
obj = JSON.parse(f)
puts obj["OS"]
puts obj["version"]

