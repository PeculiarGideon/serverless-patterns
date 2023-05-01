#!/bin/bash

: <<'COMMENT'
AWS service template using Terraform open source requires the files to be tarballed ( in .tar.gz format). 
This bash script identifies all the folders with terraform patterns and then tarballs these folders so that they can be imported into the service-template as individual prodcts"

note tarball should be created by cd ing into the pattern folder

COMMENT




for dir in *terraform*
do
 cd $dir 
 echo $dir
 tar -czvf $dir.tar.gz .
 cd ..
done


