# The Forensic Analyst: Log Mining

A web server in your network has reported suspicious activity. You have been handed a raw `access.log` file and need to identify potential security threats quickly.

In this lab, you will step into the shoes of a Security Engineer. You will move beyond simple text searching and learn how to perform high-speed data extraction.

### Your Toolkit:
* **grep**: The "Global Regular Expression Print." You'll use this to filter out the noise and find specific error codes.
* **awk**: A powerful pattern-scanning and processing language. You'll use this to treat your text file like a database and extract specific columns (like IP addresses).
* **Pipes (|)**: To chain these tools together for complex analysis.

### Your Objectives:
1.  Isolate all failed login attempts.
2.  Extract a list of unique IP addresses that are hitting the server.
3.  Calculate which IP address has made the most requests.

Click **Start** to enter the terminal and begin your investigation.