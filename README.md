Suppression Utilities
==================

A few simple tools for working with MD5-encrypted email suppression lists.

## Hashing a list

`hash_my_list.rb` is a tool to MD5-encrypt your email list.

The input file should contain one email address per line. It should not contain any other data or characters.

To use:
~~~ sh 
$ ./hash_my_list.rb plaintext_input.csv hashed_list.csv
~~~
(This would read email addresses from `plaintext_input.csv` and output a list of hashes into `hashed_list.csv`)


## Checking a list

`check_my_list.rb` is a tool to check whether a given email address is present in a given hashed suppression list.

To use:
~~~ sh
$ ./check_my_list.rb hashed_list.csv deron.wunsch@becker.com
The MD5 hash of this email address is: 6da66f64900ab44fbe1a17a96b7413af
Found! Line 224 of hashed_list.csv suppresses the email address `deron.wunsch@becker.com`.
~~~


## dummy_list.csv

This is a list of auto-generated dummy email addresses. Use it if you'd like to experiment with these tools without using the addresses of real people.
