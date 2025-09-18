# Cron Job Troubleshooting Scenario

In this scenario, you will learn how to diagnose and fix a broken cron job on Linux.  

A cron job is supposed to run a backup script every minute, writing a message to a visible file (`~/backup_status.txt`).  

However, the cron job is currently broken — it does not produce any output.  

Your task will be to:

1. Inspect the existing cron job.
2. Understand why it is failing.
3. Fix the cron job so it produces visible output.
4. Verify that the job runs correctly.

You will be able to **see the results directly** in the `~/backup_status.txt` file as you work through the steps.
