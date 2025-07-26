# LP/sourceの内容をルートディレクトリにコピー
Write-Host "Copying LP/source to root directory..."

# 既存のindex.htmlを削除（存在する場合）
if (Test-Path "index.html") {
    Remove-Item "index.html"
    Write-Host "Removed existing index.html"
}

# LP/sourceの内容をルートにコピー
Copy-Item "LP\source\*" -Destination "." -Recurse -Force
Write-Host "Copied LP/source contents to root directory"

# ファイル一覧を表示
Write-Host "Files in root directory:"
Get-ChildItem -Name

Write-Host "Deploy script completed!" 