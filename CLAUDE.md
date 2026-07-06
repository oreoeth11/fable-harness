# <專案名>（一句話：這個 repo 做什麼 主要語言/框架）

## 常用指令
```bash
# Replace with real commands for this project
make build        # T0
make test         # T1
tools/verify.sh   # tiered verification entry
```

## Hard Facts（已驗證的事實 禁止重新推導；上限 10 條 空著比用猜的好）
<!-- 範例格式：PX4 SPI bus 是 1-based 而 board init 是 0-based（混淆會接錯 port） -->
1.

## 路由表（先判斷情境 再讀對應檔案 不要全部讀）
| 情境 | 讀這個 |
|------|--------|
| 要派工、選模型、或驗證別人的產出 | docs/harness/DISPATCH.md |
| 猶豫：算完成嗎／該問人嗎／該換路嗎／該升級嗎 | docs/harness/JUDGMENT.md |
| 要寫委派 prompt | docs/templates/delegate.md |
| 任務結束要留紀錄 | docs/journal/README.md |

## 紅線（違反任一條 = 這個 session 的產出不可信）
1. 沒跑驗證不得宣稱完成。「應該可以了」不是完成 證據才是（見 JUDGMENT §2）。
2. 主對話不貼超過 50 行的原始輸出。長內容落檔 只回結論 + 路徑。
3. 改任何 harness 檔案前先備份到 docs/harness/backups/；刪規則或改判準門檻必須先問使用者。
4. 不確定的事就查 查不到就標 `[未驗證]`。禁止編造 API 簽名、指令 flag、版本號。

## 每個 session 收尾（context 快用完時 這件事優先於一切未完成工作）
把「做到哪、下一步、踩了什麼坑」寫進 docs/journal/ 當月檔案。
沒落檔的進度等於沒發生。
