#!/bin/bash

# Calculates MD5 and SHA-256 sums for files in the directory it is run
# Stores results in an outup file "check.sums"

I=0

	touch check.sums

	for file in *; do
		if [[ ("$file" != "checksum.sh") && ("$file" != "check.sums") ]] ; then
			echo -e "File: $file\n\nMD5: " >> check.sums
			md5sum "$file" | sed -E 's/([0-9A-Za-z]*).*/\1/' >> check.sums
			echo -e "\nSHA-1" >> check.sums
			sha1sum "$file" | sed -E 's/([0-9A-Za-z]*).*/\1/' >> check.sums
			echo -e "\nSHA-256:" >> check.sums
			sha256sum "$file" | sed -E 's/([0-9A-Za-z]*).*/\1/' >> check.sums
			echo -e "\n" >> check.sums
			I=$((I+1))
		fi
	done

	echo "End of file - checked $I files" >> check.sums

exit 0;
