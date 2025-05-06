#!/bin/bash

#github repo cloning automation with github cli

# Define the GitHub username
github_username="codewithsadee"
# Define the folder name to clone repositories into
folder_name="codewithsadee_repos"

# Clone repositories into the new folder
mkdir -p "$folder_name"  # Create the folder if it doesn't exist
cd "$folder_name" || exit  # Move into the folder

# Function to clone repositories
clone_repositories() {
    # GitHub API pagination parameters
    per_page=100
    page=1
    has_next_page=true

    # Clone repositories from each page
    while $has_next_page; do
        # Get repositories for the current page
        repos=$(gh repo list "$github_username" --limit "$per_page" --json nameWithOwner --jq '.[].nameWithOwner')

        # Clone repositories
        echo "$repos" | while read -r repo; do
            gh repo clone "$repo"
        done
        
        # Increment page number
        ((page++))

        # Check if there are more pages
        if [[ -z $(echo "$repos" | jq '.[0]') ]]; then
            has_next_page=false  # No more pages
        fi
    done
}

# Call the function to clone repositories
clone_repositories
