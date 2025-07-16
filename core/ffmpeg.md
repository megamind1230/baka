#1
# bugswriter
script to minize a video with ffmpeg
```sh
#!/bin/sh

fname=$(date +"%d-%m-%y")
ffmpeg -i $1 -c copy -an /tmp/tmp.mp4 # remove audio
ffmpeg -i /tmp/tmp.mp4 -vf hue=s=0 /tmp/tmp2.mp4 # grey scale
ffmpeg -itsscale 0.25 -i /tmp/tmp2.mp4 -c copy /tmp/tmp3.mp4 # speed up
ffmpeg -i /tmp/tmp3.mp4 -vcodec libx265 -crf 28 $fname.mp4 # reduce size
rm /tmp/tmp.mp4 /tmp/tmp2.mp4 /tmp/tmp3.mp4

```
