
```bash
#put names of your installed packages inside a file packages.txt
pacman -Qq > packages.txt
then you can install them anywhere
pacman -S - < packages.txt
```