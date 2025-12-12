# 💾 Step 4: In-Place Editing

To make the changes permanent and save them back to the original file, you must use the **`-i`** flag (for **in-place** editing).

### ➡️ Goal: Permanently change `DEBUG=false` to `DEBUG=true` in `app.conf`.

```bash
sed -i 's/DEBUG=false/DEBUG=true/' app.conf
```

🎉 Verification

Use cat one last time. If the file now permanently contains DEBUG=true, you have successfully completed the core task!

```bash
cat app.conf
```