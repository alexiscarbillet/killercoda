# Step 2: Understanding PermitRootLogin

In your audit, you likely saw `PermitRootLogin yes`. 

### Why is this a risk?
Every Linux system has a user named `root`. This gives hackers 50% of the login credentials (the username) for free. 

### The three main options:
| Option | Meaning |
| :--- | :--- |
| **yes** | Root can log in with password or key (Least secure). |
| **prohibit-password** | Root can only log in with an SSH key. |
| **no** | Root cannot log in at all. You must log in as a normal user and use `sudo`. |

**Concept Check:** By setting this to `no`, an attacker must first guess a valid username *and* then guess a password/key, then bypass `sudo`.