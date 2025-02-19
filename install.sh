#!/bin/bash
FILE=src/main/resources/gimli/resources/tools/gdep/genia.mod
command -v gradle >/dev/null 2>&1 || { echo "Gradle not installed. Install Gradle from https://gradle.org/." >&2; exit 1; }

if [ -f $FILE ];
then
	echo "Genia.mod already exists, no need to extract. Proceeding to building using gradle."
else
	echo "Extracting Genia.mod."
	tar -xf resources/genia.mod.tar.gz -C src/main/resources/gimli/resources/tools/gdep/
fi
	
gradle assemble
