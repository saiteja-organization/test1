echo "${{ secrets.GH_TOKEN }}" > /tmp/token
gh auth login --with-token < /tmp/token
gh pr create --title "Weekly release" -b "Updated the Version file" -r "Saiteju1997" -B "main" -H "release-v2021.3.10.24"
