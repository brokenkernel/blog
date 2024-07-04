#!/usr/bin/env zsh

pre-commit run
markdownlint -c .markdownlint.jsonc blog/content
