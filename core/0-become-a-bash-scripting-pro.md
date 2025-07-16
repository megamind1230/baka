#1 
- [[0-how-to-write-a-portable-bash-script]]
- variables
	- `name="sth"` no space
	- usage
		- `$name == ${name}`
		- `${#name}` > length
		- default value if undefined `${name:="idk"}`
- double quotes vs single quotes
	- `echo '$name'` > literal
	- `echo "$name"` > now i can print vars
- subshell `()` > impacts/effects are only inside that cmd
	- `(cd ..; pwd)` then `pwd` > both are different cuz we didnt actually `cd`
- cmd substitution `$()`
	- used when ouput of cmd are to be stored in vars
	- `var=$(pwd)`
- process substitution `<()` #how-to-use
	- `diff <(ls ./v1) <(ls ./v2)`
- `set -euo pipefail`
	- good to put right after the shebang in a script
- [[export-command-and-how-to-add-script-to-path]]
# arrays
```c
my_arr=(1 2 3 4 6)
echo ${my_arr[0]} // 1
echo ${my_arr[@]} // all elements
echo ${#my_arr[@]} // 5
```
# for loops variations in shell
```c
//item, i are like vars now
// python style
for item in $my_arr[@]; do
	echo $item
done
// c style
for ((i=0; i<10; i++)); do
	echo "$i" //notice the ""
done
// range
for i in {1..10}; do
	echo "$i"
done
// pattern matching
for item in ./somepath/ *.md; do
	echo "$item"
done
// cmd substitution result
for item in $(ls); do
	echo "$item"
done
```