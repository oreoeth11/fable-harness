# 工作日誌（append-only 永久紀錄）

## 規則
1. 按月分檔：`docs/journal/2026/2026-07.md`。
2. **只增不改不刪。** 既有條目永遠不動 — 這是日誌的定義。
3. 每次任務結束（或 session 收尾）追加一筆 不超過 8 行。
4. 日誌記「發生過什麼」；系統知識寫 wiki／可斷言的沉澱進 regression — 日誌只留指標。

## 條目格式
```markdown
## 2026-07-03 · <任務或票號> · <一句話標題>
- what: [做了什麼 1-2 行]
- evidence: [驗證輸出的檔案路徑]
- learned: [踩的坑或判斷 沒有就寫 none]
- next: [下一步 或 done]
- tags: #topic1 #topic2
```

## 用法
回顧用 grep：`grep -r "#spi" docs/journal/` 按主題撈時間軸。
新 session 接手 → 先看當月檔案最後三筆。
