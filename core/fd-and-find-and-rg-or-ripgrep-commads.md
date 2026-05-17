- rip-grep-or-rg-command
	- word searcher + uses regex
# `find` cmd find files / dirs
> the weirdest cmd syntax ever
	`find exp1 -o/-a exp2` for OR and AND
	ig find expressions are evaluated on every file
- [x] `find . \( -type f -print \) -o \( -path ./.git -prune -print \)`
	- prints all files ignoring the files inside of .git 
- [x] `find . -mtime -1`
	- -mtime -1  >  modified in last day
	- -mtime -7  >  last week
	- -mtime +30  > older than 30 days
	- -size +100M > size 100MB or more
- [x] `find . -name "*.log" -delete` delete by pattern
- [x] `find . -type d -empty` empty dir
## `-exec ;`vs  `-exec +`
- [x] `find . -name "*.org" -exec wc -l {} \;` execute on every single file
- [x] `find . -name "*.org" -exec wc -l {} \+` execute on them batch-wise
	gives total too
 
# `fd` cmd
> the simpler `find` cmd modern alternative
 
- [x] `fd -e js -e ts` extesion .js / .ts only
- [x] `fd somefile /absolute/path/of/dir`
- [x] `fd -e rs -x wc -l` run cmds
- [x] `fd -H` show hidden
# `rg` cmd or ripgrep
This is the **king of code searching**.
 1️⃣ Search text in project
```bash
rg "TODO"
```
Searches all files respecting `.gitignore`.
 2️⃣ Show line numbers
```bash
rg -n "function"
```
 3️⃣ Search only certain file types
```bash
rg "query" -t js
```
Examples
```
-t py
-t rust
-t go
```
 4️⃣ Search multiple types
```bash
rg "class" -t ts -t js
```
 5️⃣ Show only filenames
```bash
rg -l "TODO"
```
 6️⃣ Count matches
```bash
rg -c "error"
```
 7️⃣ Replace text (powerful trick)
```bash
rg "foo" -l | xargs sed -i 's/foo/bar/g'
```
# 🧠 Power combo tricks
 Find file then search inside it
```bash
fd -e js | xargs rg "useEffect"
```
 List files with matches
```bash
rg -l "TODO"
```
 Interactive search (great workflow)
Use **fzf**:
```bash
rg --line-number --no-heading "" | fzf
```
# 🚀 Pro developer workflow
Most modern devs use:
```
fd   -> find files
rg   -> search text
fzf  -> interactive filtering
bat  -> better cat
eza  -> better ls
```
✅ If you want, I can also show **20 insanely useful one-liners developers use daily with `rg`, `fd`, and `find`** (these can seriously upgrade your terminal workflow).
# ⚡ File finding tricks
 1️⃣ Find all config files
```bash
fd config
```
 2️⃣ Find files with multiple extensions
```bash
fd -e js -e ts
```
 3️⃣ Find files and open them in editor
```bash
fd -e py | fzf | xargs nvim
```
 4️⃣ Find largest files in a project
```bash
find . -type f -size +50M
```
 5️⃣ Find empty files
```bash
find . -type f -empty
```
# 🔎 Code search tricks
 6️⃣ Find all TODO comments
```bash
rg TODO
```
 7️⃣ Find all functions in JS
```bash
rg "function "
```
 8️⃣ Search only Python files
```bash
rg "import " -t py
```
 9️⃣ List files containing a match
```bash
rg -l "TODO"
```
 🔟 Count occurrences of a word
```bash
rg -c "error"
```
# 🧠 Code refactoring tricks
 11️⃣ Replace text across project
```bash
rg foo -l | xargs sed -i 's/foo/bar/g'
```
 12️⃣ Replace only in JS files
```bash
rg foo -t js -l | xargs sed -i 's/foo/bar/g'
```
 13️⃣ Find unused imports
```bash
rg "^import" | sort | uniq
```
# ⚡ File content + file search combos
 14️⃣ Search inside files found by `fd`
```bash
fd -e js | xargs rg "useEffect"
```
 15️⃣ Search only files modified recently
```bash
find . -mtime -1 -type f -exec rg "TODO" {} +
```
 16️⃣ Search but ignore node_modules
```bash
rg "error" -g '!node_modules'
```
# 🔥 Interactive workflow tricks
 18️⃣ Search text interactively
```bash
rg --line-number --no-heading "" | fzf
```
 20️⃣ Grep + open result in editor
```bash
rg "TODO" | fzf | cut -d: -f1 | xargs nvim
```
# 🚀 1. Search only specific directories
Instead of searching the whole repo:
```bash
rg "UserService" src/ services/
```
This is **much faster** in large projects.
# ⚡ 2. Search multiple patterns at once
```bash
rg -e "panic" -e "fatal" -e "error"
```
Find multiple error patterns simultaneously.
# 🔎 3. Show context around matches
Very useful for debugging.
```bash
rg -C 3 "database.connect"
```
Shows **3 lines before and after** the match.
Variants:
```bash
rg -A 5 "error"   # after
rg -B 5 "error"   # before
```
# 🧠 4. Search only definitions
Example: find function definitions.
```bash
rg "fn\s+\w+" -t rust
```
Example for Python:
```bash
rg "^def "
```
# ⚡ 5. Show statistics of matches
```bash
rg --stats "TODO"
```
Outputs:
```
20 matches
10 files searched
0.003 seconds
```
Great for **code audits**.
# 🔥 6. Show only filenames with matches
Useful for scripts.
```bash
rg -l "deprecated"
```
Opposite:
```bash
rg -L "TODO"
```
Shows files **without matches**.
# 🧰 7. Search ignoring `.gitignore`
Sometimes needed in debugging.
```bash
rg -uu "password"
```
Levels:
```
-u   include hidden files
-uu  ignore .gitignore
-uuu search everything
```
# 📦 8. Search inside compressed files
```bash
rg -z "error"
```
Works with:
```
.gz
.zip
.tar.gz
```
# 🧪 9. Output machine-readable JSON
Perfect for automation.
```bash
rg --json "TODO"
```
Example output:
```json
{
  "type": "match",
  "data": {...}
}
```
Useful in **CI pipelines**.
# 🧑‍💻 10. Search and jump directly to code
Using **fzf**:
```bash
rg --line-number --no-heading "TODO" | fzf
```
Or open in editor:
```bash
rg --line-number "TODO" | fzf | cut -d: -f1 | xargs nvim
```
Live interactive search:
```bash
rg --line-number --no-heading "" | fzf --bind "change:reload:rg {q} || true"
```
This gives you a **live code search interface**.
```
rg -n      show line numbers
rg -i      ignore case
rg -w      match whole word
rg -g      include/exclude paths
rg -t      filter by file type
rg -S      smart case
```
Example:
```bash
rg -n -S "userID"
```