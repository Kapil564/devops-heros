# Session 3: Shell Scripting Homework

This markdown file satisfies the requirement to have a unique `.md` file (other than `README.md`) documenting the Session 3 task.

## System Information Script (`system_info.sh`)

The script has been created with the following requirements fulfilled:
### `date` -> Prints the current date.
### `hostname` -> Prints the hostname.
### `whoami` -> Prints the username.
### `df -h` -> Prints the disk usage.
### `ps -ef` -> Prints the running processes.
### `varible` -> Used to store data.
### `read -p` -> Takes user input.
### `mkdir` -> Creates a directory.
### `touch` -> Creates a file.
### `>` -> Stores the running processes information in the file.

---

## Example Execution & Output

Here is what it looks like when you execute the script and interact with it:

```bash
$ chmod +x system_info.sh
$ ./system_info.sh
Current Date: Wed Oct 9 01:15:00 UTC 2026
Hostname: ubuntu-server
Username: kapil
--- Disk Usage ---
Filesystem      Size  Used Avail Use% Mounted on
udev            1.9G     0  1.9G   0% /dev
tmpfs           393M  1.1M  392M   1% /run
/dev/sda1        25G  6.5G   17G  28% /
tmpfs           2.0G     0  2.0G   0% /dev/shm
-------------------
Enter a directory name to create for storing process logs: logs_dir
Directory 'logs_dir' created successfully.
File 'logs_dir/running_processes.txt' created successfully.
Gathering running processes...
Done! Running processes have been successfully saved to logs_dir/running_processes.txt.
```

### Validating the Output File
Once the script finishes, you can check the created directory and view the running processes log:

```bash
$ ls logs_dir/
running_processes.txt

$ head -n 5 logs_dir/running_processes.txt
UID          PID    PPID  C STIME TTY          TIME CMD
root           1       0  0 Oct08 ?        00:00:03 /sbin/init
root           2       0  0 Oct08 ?        00:00:00 [kthreadd]
root           3       2  0 Oct08 ?        00:00:00 [rcu_gp]
root           4       2  0 Oct08 ?        00:00:00 [rcu_par_gp]
```
