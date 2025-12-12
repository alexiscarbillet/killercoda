# ✏️ Step 2: Substitution with `sed`

The most common use of `sed` is to replace text using the substitution command: **`s/pattern/replacement/`**.

### ➡️ Goal: Change the PORT from `80` to `8080`.

Run the command below. **Important Note:** By default, `sed` prints the result to your terminal screen (stdout) and **does not** change the original file.

```bash
sed 's/PORT=80/PORT=8080/' app.conf
```

⚠️ Observe the File

Confirm that the original file app.conf is still unchanged (it should still show PORT=80):

```bash
cat app.conf
```