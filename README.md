針對 **`02-unit-web-agents` (原生 Web 代理環境)** 單元，這個單元將開發戰場從本地 IDE 移向了雲端，強調 **「以任務為中心 (Task-Centric)」** 的開發流程。

以下是在 **GitHub Classroom** 部署其作業 (Assignments) 的具體建議：

### 1. 範本倉庫 (Template Repo) 配置建議
由於本單元高度依賴 GitHub 的原生功能（如 Workspace, Actions, Issues），範本倉庫應包含：
*   **📂 `.github/workflows/ai-agent.yml` (範本)**：預置 GitHub Actions 結構，但在 `steps` 中留下 `run: TODO` 區塊，讓學員練習配置 AI 代理人指令。
*   **📂 `tasks/`**：放入幾個帶有明確 Bug 或需重構的檔案，作為學員在 Workspace 中練習的對象。
*   **📂 `.github/ISSUE_TEMPLATE/`**：預置一個「Feature Request」模板，引導學員寫出能讓 Agent 理解的高品質需求描述。

---

### 2. 作業任務部署細節

#### 任務 1：從需求到 PR - Copilot Workspace 實戰 (Product Engineering)
*   **目標**：練習「需求描述 -> AI 規劃 -> 代碼生成 -> PR 開啟」的完整雲端閉環。
*   **Classroom 部署建議**：
    *   **成果提交**：本任務的最終產出是一個 **Pull Request (PR)**。
    *   **核核重點**：導師需查看該 PR 的描述。一個標準的 Workspace PR 會包含 Agent 的原始計畫。導師應檢查學員是否有在 Workspace 視窗中對計畫進行過人為微調 (Plan Tuning)，這體現了「指揮官」的介入價值。

#### 任務 2：幽靈編程師 - GitHub Actions 自動化 (Workflow Automation)
*   **目標**：將 AI 代理人嵌入 CI/CD 流程，實現標籤觸發的自動代碼檢查。
*   **Classroom 部署建議**：
    *   **驗證方式**：學員需在 Repo 的 **"Actions" 頁籤** 展示一次成功的執行紀錄。
    *   **操作要求**：學員必須手動為一個 Issue 貼上 `ai-fix` 標籤，並截圖證明自動化工作流已啟動並對相關代碼進行了掃描與回報。
    *   **Autograding**：檢查 `.github/workflows/ai-agent.yml` 是否正確設定了 `types: [labeled]` 觸發條件。

#### 任務 3：雲端極簡主義 - Zero-Install 開發實踐 (Cloud Native)
*   **目標**：熟練使用瀏覽器快捷鍵 `.` (句點) 進入輕量化網頁編程環境。
*   **Classroom 部署建議**：
    *   **成果提交**：學員需在 `github.dev` (或是網頁版 VS Code) 中完成一次跨檔案的代碼重構（例如：修改 CSS 變數並同步至所有 HTML 模板）。
    *   **核核重點**：查看提交日誌 (Commit Log)。網頁版編輯器的 Commit 通常會帶有特定的元數據標籤。要求學員在 Commit Message 註明「Refactored via github.dev Web Agent」，以核對其操作環境。

---

### 3. 給導師的評估與導引重點 (Tutor Benchmarks)
本單元的評分重點在於學員對 **「雲端開發流程 (Cloud Flow)」** 的適應度：
*   [ ] **規劃能力**：在 Workspace 生成計畫前，學員是否能寫出具備 Context 的 Issue 描述？
*   [ ] **自動化邏輯**：是否理解 YAML 腳本中如何調度 AI 權限與觸發時機？
*   [ ] **應急修復力**：是否學會了在無開發環境的電腦上，利用電腦瀏覽器快速修復線上 Bug 並 Push 的技巧？

### 📁 推薦範本結構 (GitHub Classroom Template)：
```text
.
├── .github/
│   ├── workflows/
│   │   └── ai-agent.yml    # 學員需完成的自動化腳本
│   └── ISSUE_TEMPLATE/
│       └── task-feature.md # 引導學員撰寫高效 Prompt
├── src/                    # 待重構或修復的代碼區
├── PR_LINK.md              # 存放學員由 Workspace 產生的 PR 連結
└── README.md               # 包含 Actions 運行結果與雲端操作心得
```

這種部署方案能讓學生站在 GitHub 生態系的最前線，深刻體會到 **「瀏覽器即是最強 IDE」** 的未來趨勢。
