#!/bin/bash
latest_tag=$(curl -s https://api.github.com/repos/muesli/duf/releases/latest | sed -Ene '/^ *"tag_name": *"(v.+)",$/s//\1/p')
echo "Using version $latest_tag"

latest_tag="${latest_tag:1}"

# Show variable after removing first char (the V in this case) for debugging
#echo "Using modified version $latest_tag"


wget 'https://github.com/muesli/duf/releases/download/v'$latest_tag'/duf_'$latest_tag'_linux_amd64.deb'
#actual file https://github.com/muesli/duf/releases/download/v0.6.2/duf_0.6.2_linux_amd64.deb
