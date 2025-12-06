# FlyPig API 資源探勘報告

一個精美的互動式網頁，展示免費公開 API 資源清單。

🔗 **GitHub 儲存庫**：[https://github.com/mkhsu2002/Free_API_LIST](https://github.com/mkhsu2002/Free_API_LIST)

## 功能特色

- 📊 **數據視覺化**：使用 Chart.js 呈現 API 類別分佈與認證機制統計
- 🔍 **智慧搜尋**：即時搜尋與多維度篩選功能
- 📋 **結構化清單**：類似 Google 試算表的表格檢視
- 📥 **資料匯出**：支援 CSV 格式匯出
- 📱 **響應式設計**：完美適配各種裝置尺寸
- 🎨 **現代化 UI**：使用 Tailwind CSS 打造的精美介面

## 技術棧

- HTML5
- Tailwind CSS (CDN)
- Chart.js
- Font Awesome
- Google Fonts (Noto Sans TC)

## 部署方式

### GitHub Pages 自動部署

1. 將此專案上傳到 GitHub 儲存庫
2. 進入儲存庫的 Settings > Pages
3. 選擇 Source 為 `main` (或 `master`) 分支
4. 選擇 `/ (root)` 資料夾
5. 點擊 Save，GitHub Pages 會自動部署

部署完成後，您的網站將可在以下網址訪問：
```
https://mkhsu2002.github.io/Free_API_LIST/
```

🌐 **線上預覽**：[[https://mkhsu2002.github.io/Free_API_LIST/](https://free-api-list.pages.dev/)

## 本地開發

直接在瀏覽器中開啟 `index.html` 即可預覽。

## 資料來源

本專案整理了 50+ 個免費公開 API 資源，涵蓋：
- 動物 (Animals)
- 動漫 (Anime)
- 安全 (Security)
- 書籍 (Books)
- 金融 (Finance)
- 天氣 (Weather)
- 科學 (Science)
- 音樂 (Music)
- 遊戲 (Games)
- 等多個分類

## 授權

MIT License

## 語言支援

網站支援兩種語言：
- **繁體中文** - 預設語言
- **English** - 點擊標題列中的語言切換按鈕

語言偏好會儲存在瀏覽器的 localStorage 中。

## 貢獻

歡迎提交 Issue 或 Pull Request！

## 相關檔案

- `README_EN.md` - 英文版說明文件
- `DEPLOY.md` - 詳細部署指南
- `deploy.sh` - 快速部署腳本

