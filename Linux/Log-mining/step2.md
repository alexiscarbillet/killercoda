# Step 2: Finding Failures with Grep

`grep` is perfect for finding specific lines. Let's find all "Unauthorized" (401) or "Forbidden" (403) attempts.

1.  **Search for 401 errors**:
    ```bash
    grep "401" /var/log/access.log
    ```

2.  **Use Extended Regex** to find both 401 and 403 errors:
    ```bash
    grep -E "401|403" /var/log/access.log
    ```

3.  **Count the failures**:
    ```bash
    grep -cE "401|403" /var/log/access.log
    ```