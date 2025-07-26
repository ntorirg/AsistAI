@echo off
echo LPを更新中...

REM LP/source/index.htmlをルートにコピー
copy "LP\source\index.html" "index.html"

REM assetフォルダをコピー
xcopy "LP\source\asset" "asset" /E /I /Y

REM Gitに追加・コミット・プッシュ
git add .
git commit -m "LP更新: %date% %time%"
git push origin main

echo 更新完了！
pause 