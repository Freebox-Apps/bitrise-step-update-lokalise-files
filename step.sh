#!/bin/bash
#set -x

# install lokalise CLI
curl -sfL https://raw.githubusercontent.com/lokalise/lokalise-cli-2-go/master/install.sh | sh

# upload files
for file in $source; do
    echo "-- file to upload :${file}"
    echo $(bin/lokalise2 -t $token --project-id $project_id file upload --lang-iso $lang_iso --file $file --tag-updated-keys=true --tags Updated --distinguish-by-file --replace-modified --convert-placeholders false)
    echo ""
done

