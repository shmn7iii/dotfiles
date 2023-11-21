#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title chrome-default
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description Open Google Chrome as user: Default
# @raycast.author shmn7iii
# @raycast.authorURL https://raycast.com/shmn7iii

open -na "Google Chrome" --args --profile-directory="Default"
