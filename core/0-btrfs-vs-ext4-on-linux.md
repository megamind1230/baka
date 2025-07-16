#1 
- [x] [File Systems | Which One is the Best? BTRFS, or EXT4 ctt](https://www.youtube.com/watch?v=HdEozE2gN9I)

- ext4
	- better performance on high hills
	- linux compatible all across distros
	- more stable and reliable
	- updates data in-place
- btrfs
	- better snapshots
	- facilitates quick administration and maintainance
	- updates data to a new location + re-directs metadata pointers to the new locations + flags the older place as allowed to overwrite .. all of this called (compression)
		- so sometimes better with rolling release distros like #linux/arch