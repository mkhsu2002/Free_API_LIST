#!/bin/bash

# GitHub Pages 快速部署腳本
# 使用前請先修改以下變數：
# - GITHUB_USERNAME: 您的 GitHub 用戶名
# - REPO_NAME: 儲存庫名稱

GITHUB_USERNAME="YOUR_USERNAME"
REPO_NAME="api-list"

echo "🚀 開始部署到 GitHub Pages..."

# 檢查是否已設定遠端儲存庫
if git remote get-url origin > /dev/null 2>&1; then
    echo "✅ 遠端儲存庫已設定"
else
    echo "📝 設定遠端儲存庫..."
    git remote add origin https://github.com/${GITHUB_USERNAME}/${REPO_NAME}.git
fi

# 添加所有變更
echo "📦 添加檔案..."
git add .

# 提交變更
echo "💾 提交變更..."
git commit -m "更新: $(date '+%Y-%m-%d %H:%M:%S')" || echo "沒有變更需要提交"

# 推送到 GitHub
echo "⬆️  推送到 GitHub..."
git push -u origin main

echo ""
echo "✅ 部署完成！"
echo "🌐 您的網站網址："
echo "   https://${GITHUB_USERNAME}.github.io/${REPO_NAME}/"
echo ""
echo "⏳ 請等待 1-2 分鐘讓 GitHub Pages 完成部署"
echo "📋 記得在 GitHub 儲存庫設定中啟用 Pages："
echo "   Settings > Pages > Source: main branch / (root)"

