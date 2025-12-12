# 🗑️ Step 3: Line Deletion

You can use the `d` command in `sed` to delete lines that match a specific pattern.

### ➡️ Goal: Delete all comment lines (lines starting with `#`).

We use the pattern address `/^#/` which means "start of line (`^`) followed by a hash (`#`)", combined with the delete command (`d`).

```bash
sed '/^#/d' app.conf
```

You should see a clean output with only the lines HOST=..., PORT=..., etc.
💡 Extra Tip

If you wanted to delete a specific line number (e.g., the 4th line), you would use: sed '4d' app.conf.
