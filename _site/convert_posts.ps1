# Create _posts directory if it doesn't exist
New-Item -ItemType Directory -Force -Path "./_posts"

# Get all markdown files from the Blog directory
Get-ChildItem -Path "./Blog/*.md" | ForEach-Object {
    $content = Get-Content $_.FullName -Raw
    $newFileName = (Get-Date -Format "yyyy-MM-dd") + "-" + ($_.Name -replace " ","-")
    $frontMatter = @"
---
layout: post
title: "$($_.BaseName)"
date: $(Get-Date -Format "yyyy-MM-dd")
categories: blog
---

"@
    $frontMatter + $content | Set-Content -Path "./_posts/$newFileName"
}
