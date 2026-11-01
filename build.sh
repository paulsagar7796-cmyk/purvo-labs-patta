#!/bin/sh
# Builds the offline copy (index.html) from app.html, the same file that is published as the web link.
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  printf '<style>:root{color-scheme:light}[hidden]{display:none!important}img{max-width:100%%}</style>\n</head>\n<body>\n'
  cat app.html
  printf '\n</body>\n</html>\n'
} > index.html
