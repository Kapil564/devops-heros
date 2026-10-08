# Session 5: Git & GitHub Homework

## Task 1: `git commit -a -m` vs `git commit -m`

### Understanding the Difference
- **`git commit -m "message"`**: This command commits only the files that have been explicitly staged using `git add <file>`. If you modify a tracked file but don't `git add` it, this command will not include it in the commit.
- **`git commit -a -m "message"`**: The `-a` flag stands for "all". This command automatically stages every modified and deleted file that Git is already tracking, and then commits them in one step. **Note:** It does *not* stage completely new (untracked) files. You still need `git add` for files Git has never seen before.

### Testing Both Commands & Observing the Output

**1. Testing `git commit -m`:**
```bash
$ touch file1.txt file2.txt
$ git add file1.txt file2.txt
$ git commit -m "Initial commit with two files"
[main 9f8e7d6] Initial commit with two files
 2 files changed, 0 insertions(+), 0 deletions(-)

# Modify both files
$ echo "Update 1" > file1.txt
$ echo "Update 2" > file2.txt

# Explicitly add only file1.txt
$ git add file1.txt
$ git commit -m "Update file1.txt"
[main 1a2b3c4] Update file1.txt
 1 file changed, 1 insertion(+)
 
$ git status
On branch main
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
        modified:   file2.txt
```
*(Observation: `file2.txt` was not committed because it wasn't explicitly staged with `git add`).*

**2. Testing `git commit -a -m`:**
```bash
$ git commit -a -m "Update file2.txt automatically"
[main 5d6e7f8] Update file2.txt automatically
 1 file changed, 1 insertion(+)

$ git status
On branch main
nothing to commit, working tree clean
```
*(Observation: `file2.txt` was automatically staged and committed because it was already a tracked file, saving us from typing `git add`).*

---

## Task 2: Git Cherry-Pick

### 1. Creating Commits in `main` branch
```bash
$ git checkout main
$ echo "Feature A" > a.txt && git add a.txt && git commit -m "Add Feature A"
$ echo "Feature B" > b.txt && git add b.txt && git commit -m "Add Feature B"
$ echo "Feature C" > c.txt && git add c.txt && git commit -m "Add Feature C"

$ git log --oneline
9f8e7d6 (HEAD -> main) Add Feature C
5a4b3c2 Add Feature B
1a2b3c4 Add Feature A
```

### 2. Creating a New Branch and Adding Commits
```bash
$ git checkout -b feature-branch
Switched to a new branch 'feature-branch'

$ echo "Feature D" > d.txt && git add d.txt && git commit -m "Add Feature D"
$ echo "Feature E" > e.txt && git add e.txt && git commit -m "Add Feature E"
$ echo "Feature F" > f.txt && git add f.txt && git commit -m "Add Feature F"

$ git log --oneline
3c2b1a0 (HEAD -> feature-branch) Add Feature F
8d7c6b5 Add Feature E
4e5d6c7 Add Feature D
9f8e7d6 (main) Add Feature C
5a4b3c2 Add Feature B
1a2b3c4 Add Feature A
```

### 3. Cherry-Picking a Specific Commit into `main`
Let's identify that we want to cherry-pick "Add Feature E" (commit hash `8d7c6b5`) from `feature-branch` into `main`.

```bash
$ git checkout main
Switched to branch 'main'

$ git cherry-pick 8d7c6b5
[main 2b3c4d5] Add Feature E
 Date: Wed Oct 9 01:25:00 2026 +0530
 1 file changed, 1 insertion(+)
 create mode 100644 e.txt
```

### 4. Verifying the Cherry-Pick
```bash
$ git log --oneline
2b3c4d5 (HEAD -> main) Add Feature E
9f8e7d6 Add Feature C
5a4b3c2 Add Feature B
1a2b3c4 Add Feature A

$ ls
a.txt  b.txt  c.txt  e.txt
```
*(Observation: Commit `8d7c6b5` from `feature-branch` was successfully copied into `main` with a new commit hash `2b3c4d5`, and the change `e.txt` is now available in `main` without bringing in Features D or F).*
