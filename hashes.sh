#!/bin/bash

# Calculates MD5, SHA-1 and SHA-256 sums for files in the directory it is run
# Stores results in an outup file "hashes.txt"

I=0

	touch hashes.txt

	for file in *; do
		if [[ ("$file" != "checksum.sh") && ("$file" != "hashes.txt") ]] ; then
			echo -e "File: $file\n\nMD5: " >> hashes.txt
			md5sum "$file" | sed -E 's/([0-9A-Za-z]*).*/\1/' >> hashes.txt
			echo -e "\nSHA-1" >> hashes.txt
			sha1sum "$file" | sed -E 's/([0-9A-Za-z]*).*/\1/' >> hashes.txt
			echo -e "\nSHA-256:" >> hashes.txt
			sha256sum "$file" | sed -E 's/([0-9A-Za-z]*).*/\1/' >> hashes.txt
			echo -e "\n" >> hashes.txt
			I=$((I+1))
		fi
	done

	echo "End of file - checked $I files" >> hashes.txt

exit 0;
