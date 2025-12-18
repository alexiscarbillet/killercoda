## Step 1: Encountering the Lock Error

Usually, the first sign of trouble is when you try to install a package and the system refuses to cooperate.

Try to install the `htop` utility:
`sudo apt-get install htop -y`

### Observe the output
You should see an error message similar to:
> `E: Could not get lock /var/lib/dpkg/lock-frontend - open (11: Resource temporarily unavailable)`
> `E: Unable to acquire the dpkg frontend lock (/var/lib/dpkg/lock-frontend), is another process using it?`

This happens because Linux prevents multiple processes from modifying the package database at the same time to prevent corruption.