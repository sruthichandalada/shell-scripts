#!/bin/bash
# Define variables
REPO_DIR="/home/ubuntu/shell-scripts"  # Change this to your repo path
BRANCH_NAME="branch-$(date +%Y%m%d-%H%M%S)"  # Unique branch name
COMMIT_MSG="Adding new branch on $(date)"
GITHUB_USERNAME="sruthichandalada" 
GITHUB_REPO="shell-script" #name of my repo
GITHUB_REMOTE="origin"  # Change if using a different remote
# Navigate to repo
cd $REPO_DIR || { echo "Repository not found!"; exit 1; }
# Fetch latest changes
git fetch $GITHUB_REMOTE
# Create and switch to the new branch
git checkout -b $BRANCH_NAME
# Make some changes 
echo "New feature added!" >> feature.txt
git add .
# Commit changes
git commit -m "$COMMIT_MSG"
# Push the new branch to GitHub
git push -u $GITHUB_REMOTE $BRANCH_NAME
# Print branch name
echo "✅ New branch '$BRANCH_NAME' created and pushed to GitHub."
# Print GitHub URL
echo "🔗 View your branch: https://github.com/$GITHUB_USERNAME/$GITHUB_REPO/tree/$BRANCH_NAME"
