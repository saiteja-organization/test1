gh-token=$1
app_version=$2
echo $gh-token > /tmp/token
cat /tmp/token
gh auth login --with-token < /tmp/token
gh pr create --title "Weekly release" -b "Updated the Version file" -r "Saiteju1997" -B "main" -H "release-v$app_version"
