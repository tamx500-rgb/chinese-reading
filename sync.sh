#!/bin/bash
# 一鍵同步國語大意填空到 GitHub
cd "$(dirname "$0")"

echo "🚀 開始同步大意填空題到 GitHub..."

# 1. 暫存變更
git add .

# 2. 自動抓取當前時間作為 commit 紀錄
COMMIT_MSG="feat: 新增第七課大意填空題與更新首頁 ($(date +'%Y-%m-%d %H:%M'))"
if [ -n "$1" ]; then
  COMMIT_MSG="$1"
fi

git commit -m "$COMMIT_MSG"

# 3. 推送到 GitHub
git push origin main

echo "✅ 同步完成！學生已可在線上練習。"
