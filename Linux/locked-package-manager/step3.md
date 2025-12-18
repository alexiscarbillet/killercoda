## Step 3: Clearing the Lock

In this environment, a background script has "hung" and is holding the lock. We need to terminate it and clean up the lock files.

### 1. Kill the stuck process
Replace `<PID>` with the number you found in the previous step:
`sudo kill -9 <PID>`

### 2. Remove the stale lock files
Even after the process is dead, the "lock" files often remain on the disk. Delete them manually:
`sudo rm /var/lib/dpkg/lock`
`sudo rm /var/lib/dpkg/lock-frontend`
`sudo rm /var/lib/apt/lists/lock`

### 3. Repair the Package Database
Whenever a package installation is interrupted, you should run this command to fix any half-installed packages:
`sudo dpkg --configure -a`

### 4. Verify the Fix
Now, try installing `htop` again:
`sudo apt-get update && sudo apt-get install htop -y`

If the installation starts, you have successfully fixed the system!