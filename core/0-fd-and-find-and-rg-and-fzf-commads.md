- ripgrep or rg : word searcher + uses regex
# intro
## `Find` cmd find fiLes / dirs (really hard)
> the weirdest syntax
	`find exp1 -o/-a exp2` for  OR/AND
	ig find expressions are evaluated on every file
- [x] `find . \( -type f -print \) -o \( -path ./.git -prune -print \)`
	- prints all files ignoring the files inside of .git
- [x] `find . -mtime -1`
	- `-mtime -1`  >  modified in last day
	- `-mtime -7` >  last week
	- `-mtime +30`  > older than 30 days
	- `-size +100M` > size 100MB or more
- [x] `find . -name "*.log" -delete` delete by pattern
- [x] `find . -type d -empty` empty dir
### `-exec ;`vs  `-exec +`
- [x] `find . -name "*.org" -exec wc -l {} \;` execute on every single file
- [x] `find . -name "*.org" -exec wc -l {} \+` execute on them batch-wise, gives total too

## `fd` cmd (the modern, easy and better version of `find`)
> the simpler `find` cmd modern alternative

- [x] `fd -e js -e ts` extesion .js / .ts only
- [x] `fd somefile /absolute/path/of/dir`
- [x] `fd -e rs -x wc -l` also can run cmds
- [x] `fd -H` show hidden
## `rg` cmd or ripgrep
This is the **king of code/content searching**.
 Search text in project
```bash
rg "TODO"
```
Searches all files respecting `.gitignore` btw

 Show line numbers
```bash
rg -n "function"
```

 Search only certain file types
```bash
rg "class" -t ts -t js
```

 Show only filenames
```bash
rg -l "TODO"
```

 Count matches
```bash
rg -c "error"
```

 Replace text (powerful trick)
```bash
rg "foo" -l | xargs sed -i 's/foo/bar/g'
```

# combos

 search inside of specific file formats
```bash
fd -e js | xargs rg "useEffect"
```

 List file names that has content that matches
```bash
rg -l "TODO"
```

 Interactive search (great workflow)
Use **fzf**:
```bash
rg --line-number --no-heading "" | fzf
```


Find files and open them in editor
```bash
fd -e py | fzf | xargs nvim
```


Search only Python files
```bash
rg "import " -t py
```

List files containing a match
```bash
rg -l "TODO"
```

Count occurrences of a word
```bash
rg -c "error"
```

Replace text across project
```bash
rg foo -l | xargs sed -i 's/foo/bar/g'
```

Replace only in JS files
```bash
rg foo -t js -l | xargs sed -i 's/foo/bar/g'
```

Find unused imports
```bash
rg "^import" | sort | uniq
```

Search but ignore node_modules
```bash
rg "error" -g '!node_modules'
```

Search inside files found by `fd`
```bash
fd -e js | xargs rg "useEffect"
```

Search only files modified recently
```bash
find . -mtime -1 -type f -exec rg "TODO" {} +
```

Search text interactively
```bash
rg --line-number --no-heading "" | fzf
```

Grep + open result in editor
```bash
rg "TODO" | fzf | cut -d: -f1 | xargs nvim
```

Search only specific directories
```bash
rg "UserService" src/ services/
```

Search multiple patterns at once
Find multiple error patterns simultaneously.
```bash
rg -e "panic" -e "fatal" -e "error"
```

Show context around matches Very useful for debugging.
Shows 3 lines before and after the match.
```bash
rg -C 3 "database.connect"
```
Variants:
```bash
rg -A 5 "error"   # after
rg -B 5 "error"   # before
```

Search func definitions
```bash
rg "fn\s+\w+" -t rust
```
for Python:
```bash
rg "^def "
```

Show statistics of matches
```bash
rg --stats "TODO"
```
Outputs:
```
20 matches
10 files searched
0.003 seconds
```

Show only filenames with matches Useful for scripts.
```bash
rg -l "deprecated"
```
Opposite:
```bash
rg -L "TODO"
```
Shows files **without matches**.


Search inside compressed files
```bash
rg -z "error"
```

Output machine-readable JSON Perfect for automation.
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

Search and jump directly to code Using **fzf**:
```bash
rg --line-number --no-heading "TODO" | fzf
```
Or open in editor:
```bash
rg --line-number "TODO" | fzf | cut -d: -f1 | xargs nvim
```


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

# deep-dive
## Find largest files in a project

find regular files larger than 50 MiB.

``` bash
find . -type f -size +50M
```

`fd` equivalent

``` bash
fd -t f -S +50M
```

You can also sort by size:

``` bash
fd -t f -S +50M -x du -h 
# do command on them
```

For a useful largest-files list:

``` bash
fd -t f -x du -h  | sort -h
```

Largest at the top(reversed):

``` bash
fd -t f -x du -h  | sort -hr
```

## Find empty files

``` bash
find . -type f -empty
```

`fd` equivalent

``` bash
fd -t f -S 0
```

You can also find empty directories:

``` bash
fd -t d --empty
```

## Live interactive search with `rg` + `fzf`

Your command:

``` bash
rg --line-number --no-heading "" |
    fzf --bind "change:reload:rg  || true"
```

is trying to create a **live grep interface**. The idea is:

``` text
                 
  Type query     
                 
         
         
      fzf
         
         
  query changes
         
         
  rg searches again
         
         
   new results
```

The parts

1.  1\. Initial search

    ``` bash
    rg --line-number --no-heading ""
    ```

    The empty pattern:

    ``` text
    ""
    ```

    matches every line. So initially, `rg` outputs something like:

    ``` text
    src/main.cs:10:Console.WriteLine("Hello");
    src/utils.cs:25:return result;
    README.md:4:This is a project.
    ```

    `--line-number` adds line numbers:

    ``` text
    file:line:content
    ```

    `--no-heading` prevents `rg` from grouping results by filename.

2.  2\. Pipe results into `fzf`

    rg   \| fzf Now `fzf` displays the results interactively.

3.  3\. Reload whenever the query changes

    `--bind "change:reload:rg  || true"` change means: When the text
    inside the fzf search box changes  Then: `reload` means: Run this
    command again and replace the current results. And: `rg ` means:
    Run ripgrep using the current fzf query.

`|| true`

This is important:

``` bash
rg  || true
```

If `rg` finds no matches, it exits with status `1`. Without `|| true`,
`fzf` may treat that as a failed reload command. So: `|| true` means:
Even if `rg` finds nothing, don't treat it as a fatal error.

### A better version

I would usually write:

``` bash
rg --line-number --no-heading --color=never "" |
    fzf --bind 'change:reload:rg --line-number --no-heading --color=never  || true'
```

The important thing is to use the same formatting during reload.

However, for searching code interactively, I would recommend a more
complete version with preview:

``` bash
rg --line-number --no-heading --color=never "" |
fzf \
  --delimiter ':' \
  --preview 'bat --style=numbers --color=always --highlight-line  ' \
  --bind 'change:reload:rg --line-number --no-heading --color=never  || true'
```

Then you get:

``` text
                                            
  Search: password                          
                                            
  src/auth.cs:42: password = ...            
  src/user.cs:18: PasswordHash ...          
                                            
                                            
               bat preview                  
       source code around selected line     
                                            
```

This is essentially a tiny interactive code-search tool.

## `rg` and `.gitignore`

Normally:

``` bash
rg "password"
```

respects `.gitignore`.

For example, if your `.gitignore` contains:

``` gitignore
node_modules/
bin/
obj/
.env
```

then:

``` bash
rg "password"
```

will skip those files. This is usually what you want.

### `-u`: include hidden files

``` bash
rg -u "password"
```

This tells `rg` to search hidden files/directories too. For example:

``` text
.git/
.config/
.env
```

Normally these may be ignored.

So:

``` bash
rg -u "password"
```

means roughly: Search ignored files, including hidden files.

### `-uu`: ignore `.gitignore`

``` bash
rg -uu "password"
```

This goes further. It searches files that would normally be ignored by
`.gitignore`. Example:

``` text
.gitignore:
node_modules/
*.log
.env
```

Normal:

``` bash
rg "password"
```

searches:

``` text
src/
README.md
config/
```

But skips:

``` text
node_modules/
logs/
.env
```

With:

``` bash
rg -uu "password"
```

it searches those ignored files too.

This is useful when debugging things like:

``` bash
rg -uu "password"
rg -uu "TODO"
rg -uu "connection string"
```

### `-uuu`: search absolutely everything

``` bash
rg -uuu "password"
```

The three levels are:

``` text
rg pattern
     
        normal search
        respects hidden files and ignore rules

rg -u pattern
     
        include hidden files

rg -uu pattern
     
        ignore .gitignore rules

rg -uuu pattern
     
        search everything, including normally ignored files
```

## A good mental model:

``` bash
rg       # normal project search
rg -u    # include hidden files
rg -uu   # ignore .gitignore
rg -uuu  # ignore everything that normally prevents searching
```

Practical examples

``` bash
# Normal source-code search
rg "TODO"

# Search configuration files too
rg -u "database"

# Search ignored build/dependency files
rg -uu "SomeClass"

# Search literally everything
rg -uuu "password"
```

   Be careful with:

``` bash
rg -uuu
```

inside large projects because it may search:

``` text
.git/
node_modules/
bin/
obj/
target/
build/
```

and become extremely slow.

``` bash
rg -uu --glob '!node_modules' "query"
```

**Search ignored files, but skip `node_modules`.** And:

``` bash
rg -uu --glob '!*.lock' "query"
```

**Search ignored files, but skip files whose names end in `.lock`.**

`--glob` lets you include or exclude files using patterns. You can
exclude multiple directories:

``` bash
rg -uu \
  --glob '!node_modules/**' \
  --glob '!target/**' \
  --glob '!bin/**' \
  "query"
```

`--glob` can also be used positively:

``` bash
rg "query" --glob '*.cs'
```

Search only C# files.

``` bash
rg "query" --glob '*.el'
```

Search only Emacs Lisp files.

``` bash
rg "query" --glob '*.'
```

Search C# source and project files.

Suppose you want to search **everything**, including ignored files, but
don't want dependencies and build output:

``` bash
rg -uu \
  --glob '!node_modules/**' \
  --glob '!bin/**' \
  --glob '!obj/**' \
  --glob '!target/**' \
  --glob '!*.lock' \
  "password"
```

In plain English:

> Search ignored files for `password`, but skip Node dependencies,
> compiled build directories, Rust build output, and lock files.

This is a very useful middle ground between:

``` bash
rg "query"
```

and:

``` bash
rg -uuu "query"
```

