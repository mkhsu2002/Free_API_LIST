# GitHub Pages 部署指南

## 📋 前置準備

1. 確保您已經有 GitHub 帳號
2. 確保已安裝 Git（本專案已初始化 Git）

## 🚀 上傳到 GitHub 步驟

### 方法一：使用 GitHub CLI（推薦）

如果您已安裝 GitHub CLI：

```bash
# 1. 登入 GitHub（如果尚未登入）
gh auth login

# 2. 在 GitHub 上創建儲存庫並推送
gh repo create api-list --public --source=. --remote=origin --push
```

### 方法二：使用網頁介面（最簡單）

1. **在 GitHub 上創建新儲存庫**
   - 前往 https://github.com/new
   - 輸入儲存庫名稱（例如：`api-list`）
   - 選擇 Public（公開）
   - **不要**勾選「Initialize this repository with a README」
   - 點擊「Create repository」

2. **連接本地儲存庫並推送**

   在終端機執行以下指令（將 `YOUR_USERNAME` 替換為您的 GitHub 用戶名，`REPO_NAME` 替換為儲存庫名稱）：

   ```bash
   cd "/Users/mkhsu/Library/CloudStorage/Dropbox/Cursor_Projects/API_List"
   
   # 添加遠端儲存庫
   git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git
   
   # 推送程式碼
   git push -u origin main
   ```

### 方法三：使用 SSH（如果您已設定 SSH 金鑰）

```bash
cd "/Users/mkhsu/Library/CloudStorage/Dropbox/Cursor_Projects/API_List"

# 添加遠端儲存庫（使用 SSH）
git remote add origin git@github.com:YOUR_USERNAME/REPO_NAME.git

# 推送程式碼
git push -u origin main
```

## ⚙️ 啟用 GitHub Pages

1. **進入儲存庫設定**
   - 在 GitHub 儲存庫頁面，點擊右上角的 **Settings**（設定）

2. **設定 Pages**
   - 在左側選單中找到 **Pages**（頁面）
   - 在 **Source**（來源）區塊中：
     - 選擇分支：**main**（或 **master**）
     - 選擇資料夾：**/ (root)**
   - 點擊 **Save**（儲存）

3. **等待部署**
   - GitHub 會自動開始部署（通常需要 1-2 分鐘）
   - 部署完成後，您會看到一個綠色勾勾和網址

4. **訪問您的網站**
   - 您的網站網址格式為：
     ```
     https://YOUR_USERNAME.github.io/REPO_NAME/
     ```
   - 例如：`https://username.github.io/api-list/`

## 🔄 更新網站

每次您修改程式碼後，只需執行：

```bash
cd "/Users/mkhsu/Library/CloudStorage/Dropbox/Cursor_Projects/API_List"

# 添加變更
git add .

# 提交變更
git commit -m "更新描述"

# 推送到 GitHub
git push
```

GitHub Pages 會自動重新部署（通常需要 1-2 分鐘）。

## 📝 注意事項

- GitHub Pages 僅支援靜態網站（HTML、CSS、JavaScript）
- 本專案使用 CDN 載入外部資源，無需額外設定
- 免費版 GitHub Pages 有流量限制，但對個人專案通常足夠
- 如果您的儲存庫是 Private，需要升級到 GitHub Pro 才能使用 Pages

## 🐛 疑難排解

### 問題：網站顯示 404
- 確認 `index.html` 檔案在根目錄
- 確認 GitHub Pages 設定正確（Source 選擇 main 分支和 / (root) 資料夾）
- 等待幾分鐘讓部署完成

### 問題：樣式或圖表無法顯示
- 檢查瀏覽器控制台是否有錯誤
- 確認 CDN 連結正確（可能需要網路連線）
- 清除瀏覽器快取後重新載入

### 問題：無法推送程式碼
- 確認已正確設定 Git 用戶資訊：
  ```bash
  git config --global user.name "您的名稱"
  git config --global user.email "您的Email"
  ```
- 確認遠端儲存庫 URL 正確
- 確認有權限推送到該儲存庫

## 📚 相關資源

- [GitHub Pages 官方文件](https://docs.github.com/en/pages)
- [Git 基礎教學](https://git-scm.com/book/zh-tw/v2)

