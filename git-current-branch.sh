#!/usr/bin/env bash

branch_name="$(git symbolic-ref HEAD 2>/dev/null)" ||
branch_name="unnamed branch"
short_branch_name=$(echo $branch_name | cut -d '/' -f 3)
echo $short_branch_name
