# Step 3: Isolating Data with Awk

While `grep` finds lines, `awk` finds **columns**. By default, `awk` uses spaces as separators.

1.  **Extract only the IP addresses** (Column 1):
    ```bash
    awk '{print $1}' /var/log/access.log
    ```

2.  **Extract IPs and their Status Codes** (Column 1 and Column 6):
    ```bash
    awk '{print $1 " -> " $6}' /var/log/access.log
    ```

3.  **Filter and Extract**:
    Find lines with "401" and print only the IP:
    ```bash
    awk '$6 == "401" {print $1}' /var/log/access.log
    ```