# Linux Homework Tasks - Session 1 & 2

## Task 1: Soft Link & Hard Link

### What are they?
In Linux, links are used to create shortcuts or multiple references to a single file. There are two types: **Soft Links (Symbolic Links)** and **Hard Links**.

**Soft Link (Symbolic Link)**
*   **Concept:** Similar to a "Shortcut" in Windows. It's a special kind of file that contains a path to the original file.
*   **Target Deletion:** If you delete the original file, the soft link becomes a "dangling link" (broken) and no longer works.
*   **File Systems:** Can span across different file systems and partitions.
*   **Directories:** Can link to both files and directories.

**Hard Link**
*   **Concept:** Another name for the exact same file data on the hard drive (points to the exact same *inode*).
*   **Target Deletion:** If you delete the original file, the data is still accessible via the hard link. The data is only deleted when *all* hard links pointing to it are removed.
*   **File Systems:** Cannot span across different file systems or partitions (must be on the same volume).
*   **Directories:** Cannot link to directories (to prevent infinite loops in the file system tree).

### Commands to Create Links
*   **Create a Soft Link:** `ln -s /path/to/original /path/to/link`
*   **Create a Hard Link:** `ln /path/to/original /path/to/link`

### Practice: Creating and Deleting
```bash
# 1. Create a dummy file
echo "Hello World" > original.txt

# 2. Create a Soft Link
ln -s original.txt softlink.txt

# 3. Create a Hard Link
ln original.txt hardlink.txt

# 4. View the links (notice the 'l' at the start of permissions for softlink)
ls -li 

# 5. Delete links
rm softlink.txt
rm hardlink.txt
```

### 💡 Interview Prep: "What is the difference between a Soft Link and a Hard Link?"
> *"A soft link is essentially a pointer to a file's name, much like a desktop shortcut. If the original file is deleted, the soft link breaks. It can cross file systems and link to directories. A hard link, on the other hand, points directly to the underlying data block (inode) on the disk. Deleting the original file won't break the hard link, as long as one link remains. Hard links cannot span across different file systems and cannot link to directories."*

---

## Task 2: `adduser` vs `useradd`

### The Difference
*   **`useradd`**: This is a low-level, native binary compiled with the Linux system. It creates the user but **does not** set a password, create a home directory, or copy default configuration files unless you explicitly pass the correct flags (like `-m` for home dir).
*   **`adduser`**: This is a high-level, friendly script (usually written in Perl on Debian/Ubuntu systems) that runs `useradd` under the hood. It is interactive: it automatically creates the home directory, sets up default configurations, and prompts you for a password and user details (Full Name, Room Number, etc.).

### Which is preferred and why?
**`adduser`** is the preferred command on Debian/Ubuntu-based Linux systems for everyday administrative tasks. 
**Why:** It is safer, interactive, and saves time by automatically handling the scaffolding (home directory, basic shell config) and enforcing password creation right away.

### Practice: Creating a test user
```bash
# Recommended way
sudo adduser testuser

# You will be prompted to enter a new UNIX password and some optional details.
```

---

## Task 3: `journalctl`

### What is it used for?
`journalctl` is a command-line utility used to query and read the logs collected by `systemd` (specifically the `systemd-journald` service). Modern Linux distributions use `systemd` to manage services, and `journalctl` provides a centralized way to view logs for the entire system, kernel, and individual services.

### How to view logs
*   **View all system logs:** 
    ```bash
    journalctl
    ```
*   **View logs in reverse (newest first):**
    ```bash
    journalctl -r
    ```
*   **Follow logs in real-time (like `tail -f`):**
    ```bash
    journalctl -f
    ```

### Practice: Checking logs for a specific service
Use the `-u` (unit) flag to filter logs for a specific service:
```bash
# View SSH service logs
journalctl -u ssh.service

# View Nginx service logs
journalctl -u nginx.service

# View logs for a service since the system booted
journalctl -u docker.service -b
```

---

## Task 4: Linux Command Cheat Sheet

Here are essential Linux commands you should practice and understand for a DevOps role:

### Navigation & File Management
*   `pwd` - Print working directory (where am I?).
*   `ls -la` - List files, including hidden ones, in a long format.
*   `cd /path` - Change directory.
*   `mkdir <dir_name>` - Create a new directory.
*   `cp <source> <destination>` - Copy files/directories (use `-r` for recursive).
*   `mv <source> <destination>` - Move or rename files/directories.
*   `rm <file>` - Remove a file (use `rm -rf <dir>` to forcefully remove a directory).

### File Viewing & Manipulation
*   `cat <file>` - Output the entire contents of a file.
*   `less <file>` - View file contents page by page (good for large files).
*   `tail -f <file>` - Output the last 10 lines of a file and follow updates live.
*   `grep "pattern" <file>` - Search for a specific word/pattern inside a file.

### Permissions & Ownership
*   `chmod 755 <file>` - Change file permissions (Read/Write/Execute).
*   `chown user:group <file>` - Change file owner and group.

### System & Processes
*   `top` / `htop` - View live system resource usage (CPU, RAM, processes).
*   `ps aux` - List all currently running processes.
*   `kill <PID>` - Terminate a process using its Process ID.
*   `df -h` - Show disk space usage in a human-readable format.
*   `free -m` - Show available RAM in MB.

### Networking
*   `ping <host>` - Check connectivity to a host.
*   `curl -I <url>` - Fetch HTTP headers from a URL.
*   `netstat -tulpn` (or `ss -tulpn`) - List active listening ports and services.
