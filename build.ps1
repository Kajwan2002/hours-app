# Builds index.html (for GitHub Pages) from hours.html (the Claude artifact source).
# Run after editing hours.html:  powershell -ExecutionPolicy Bypass -File build.ps1
$src = Get-Content -Raw -Encoding UTF8 "$PSScriptRoot\hours.html"
$head = @'
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">
<meta name="theme-color" content="#F2F3F0" media="(prefers-color-scheme: light)">
<meta name="theme-color" content="#101214" media="(prefers-color-scheme: dark)">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="mobile-web-app-capable" content="yes">
<meta name="app-build" content="__BUILD__">
<style>:root{color-scheme:light;padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0;font:14px/1.4 system-ui,sans-serif}img{max-width:100%}[hidden]{display:none!important}</style>
</head>
<body>
'@
$head = $head.Replace("__BUILD__", (Get-Date -Format "yyyyMMddHHmmss"))
$out = $head + $src + "`n</body>`n</html>`n"
[System.IO.File]::WriteAllText("$PSScriptRoot\index.html", $out, (New-Object System.Text.UTF8Encoding $false))
Write-Output "index.html built"
