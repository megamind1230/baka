
#1 
1. to swallow
	- [ ] [Force Your Terminal To Swallow - YouTube](https://www.youtube.com/watch?v=mBNLzHcUtTo&ab_channel=DistroTube)
		- [x] https://github.com/salman-abedin/devour
1. a guy said
	I don't use this swallow thing, instead I just make sure my terminal does not become frozen:
	```c
	function n(){
		nohup "$@" >/dev/null 2>&1 &!
		// no hungup + dont show output or errors
	}
	// then in terminal for example
	n mpv ~/video.mp4
	```
	That way I can even close the terminal and mpv would still be running.