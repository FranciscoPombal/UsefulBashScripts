#!/bin/bash

# Sorts all images in a folder by resolution, creating a folder for each resolution found.

for image in *.*;
	do res=$(identify -format %wx%h\\n "$image");
	mkdir -p "$res";
	mv "$image" "$res";
done

exit 0;
