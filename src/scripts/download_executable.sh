
# in order to download release artifacts from github, you have to first retreive the
# list of asset URLs using the github repo REST API. Use the asset URL to download 
# the artifact as a octet-stream data stream. You will need to get an access token 
# from "settings -> developer settings -> personal access tokens" on the github UI
#!/bin/bash -e

owner="kieran-osgood"
repo="update-git-tags"
tag="0.0.1"
artifact="update-git-tags"
# FIXME: remove this token!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# FIXME: remove this token!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# FIXME: remove this token!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# FIXME: remove this token!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
token="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"
list_asset_url="https://api.github.com/repos/${owner}/${repo}/releases/tags/${tag}?access_token=${token}"

# get url for artifact with name==$artifact
asset_url=$(curl "${list_asset_url}" | jq ".assets[] | select(.name==\"${artifact}\") | .url" | sed 's/\"//g')

# download the artifact
curl -vLJO -H 'Accept: application/octet-stream' \
		"${asset_url}?access_token=${token}"
