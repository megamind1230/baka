#1
- sometimes there would be these 2 options
	- a whole live image
		- musl iso > faster on hardware , but sometimes breaks davnici resolve
		- glibc iso > normal iso
	- `rootfs tar`> compressed root file system (no packages, boot loader , kernel  just the root directory)

BIOS not UEFI

 MBR(master boot record)(maybe shown as `dos`)(old, 2TB disk max) vs GPT(GUI partition table)(new)
	bios can handle both {mbr & gpt}
	uefi only deals with new(gpt)

`wheel group` in linux helps its members to do sudo commands easily

`cfdisk` better than just `fdisk`

>bios with MBR > nothing to do more
>bios with GPT > create a special (`boot bios` type) file of about 1MB, better make a swap of double the RAM size (but from 4GB on so on .. just the RAM size is ok for swap size)


>uefi with GPT > create a special (`vfat` type) file of about 200MB



#linux/anaHr 

<iframe width="560" height="315" src="https://www.youtube.com/embed/1ppStZXFyuA?si=bRsQs4_qn5oN_16_" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
