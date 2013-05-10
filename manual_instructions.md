# Manual Suppression List Hashing

## How to MD5 Encrypt
The format that we expect is a newline-separated list of MD5-hashed email addresses. To generate the hashes you're going to want to take each email address, remove any surrounding delimiters (quotes, parentheses, etc) or whitespace surrinding the address, downcase, and then run it through the hashing function for the programming language of your choice. For example, in Ruby:

    require 'digest/md5'
    email = " Zane@upworthy.com\r\n"
    Digest::MD5.hexdigest(email.strip.downcase)
    => "49fc47b0f07fde5973a654d761801613"

Or in SQL:

    SELECT md5(lower(trim(' Zane@upworthy.com\r\n')));

You may want to verify that your process generates the same hash shown above for ` Zane@upworthy.com\r\n`.

In the example, the line would contain only `49fc47b0f07fde5973a654d761801613` -- no quotes around the hash.
