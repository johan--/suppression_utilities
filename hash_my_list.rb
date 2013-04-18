#!/usr/bin/env ruby
require 'digest/md5'

input_filename = ARGV[0]
input_file = File.new(input_filename, "r")

output_filename = ARGV[1]
output_file = File.new(output_filename, "w+")

counter = 0
while (line = input_file.gets)
  counter = counter + 1
  puts "Processed #{counter} lines.\n" if (counter % 1000 == 0) 

  line.chomp!
  hash = Digest::MD5.hexdigest(line)
  output_file.write hash+"\n"
end
puts "Processing complete after #{counter} lines."

input_file.close
output_file.close
