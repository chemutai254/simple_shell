#!/usr/bin/env bash
set -e

cd "$(dirname "$readlink -f "$BASH_SOURCE")")/."

# see all contributors email addresses and names

{
	cat <<- 'EOH'
		# This file lists individuals who contributed to the content to the 			repository
		# For how it is generated, see 'generate-authors.sh'.
	EOH
	echo
	git log --format='%aN <%aE>' | LC_ALL=C.UTF-8 sort -uf
} > AUTHORS
