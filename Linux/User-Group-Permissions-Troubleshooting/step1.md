# Step 1: Create Users and Groups

* Create a group called `devteam`:

```bash
sudo groupadd devteam
```

* Create two users and add them to the group:

```bash
sudo useradd -m -s /bin/bash alice
sudo useradd -m -s /bin/bash bob

sudo usermod -aG devteam alice
sudo usermod -aG devteam bob
```

* Set passwords (use `password` for simplicity):

```bash
echo "alice:password" | sudo chpasswd
echo "bob:password" | sudo chpasswd
```
Now you have two users (`alice` and `bob`) both belonging to the `devteam` group.