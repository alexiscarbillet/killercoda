# Step 4: Advanced Log Reporting

Let's combine `awk`, `sort`, and `uniq` to find out which IP is the most "chatty."

1.  **Identify the top attacker**:
    ```bash
    awk '{print $1}' /var/log/access.log | sort | uniq -c | sort -nr
    ```
    *This counts occurrences of each IP and sorts them from highest to lowest.*

2.  **The "If" Statement in Awk**:
    Only print the IP if the status code is NOT 200:
    ```bash
    awk '$6 != "200" {print "Security Alert: " $1}' /var/log/access.log
    ```