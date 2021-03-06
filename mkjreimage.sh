#!/bin/bash
set -euo pipefail

depsfile="module-deps.txt"

test -f $depsfile

$JAVA_HOME/bin/jlink --output spring-boot-jre \
       	--add-modules (cat $depsfile) \
	-G --no-header-files --no-man-pages
