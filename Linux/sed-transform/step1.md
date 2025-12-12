# 💻 Step 1: Create the Input File

We need a configuration file to practice with. We will use a **here-document** (`<< EOF...EOF`) piped into `cat` to create the multi-line file `app.conf` in a single command.

### ➡️ Command: Create `app.conf`

```bash
cat > app.conf << EOF
# Application Configuration
HOST=127.0.0.1
PORT=80
TIMEOUT=30
DEBUG=false
# END
EOF
```

✅ Verification: Check Content

Use cat to display the contents of the file you just created.

```bash
cat app.conf
```