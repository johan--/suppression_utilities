#!/usr/bin/env ruby
require 'digest/md5'

email_address = ARGV[1].downcase
hash = Digest::MD5.hexdigest(email_address)
puts "The MD5 hash of this email address is: #{hash}"

input_filename = ARGV[0]
input_file = File.new(input_filename, "r")

counter = 0
found = false
while ((line = input_file.gets) && (!found))
  counter = counter + 1
  puts "Processed #{counter} lines.\n" if (counter % 1000 == 0) 

  line.chomp!
  found = true if line == hash
end

if found
  puts "Found! Line #{counter} of #{input_file} suppresses the email address `#{email_address}`."
else
  puts "Not found. #{input_file} does not suppress the email address `#{email_address}`."
end

input_file.close


