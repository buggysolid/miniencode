# miniencode

### What

Encode mkv videos in 1280x720 (720p) x265 using ffmpeg.

### Install

```
chmod +x install.sh
chmod +x encode.sh
./install.sh
```

### Run

```
./encode.sh my-video-file.mkv 8
```

### Docs

install.sh no-args  

encode.sh file-input   

Or you can specify the encoder preset you want to use.  

encode.sh file-input veryfast  

### How did you come up with the values you use?

Intuition...

Papers and resources I read.

Section IV of https://pure.tue.nl/ws/portalfiles/portal/3855057/900594821850225.pdf  

Section 4 of https://projet.liris.cnrs.fr/imagine/pub/proceedings/ICIP-2011/papers/1569406845.pdf  

Section 4 of https://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.670.6710&rep=rep1&type=pdf  

https://obsproject.com/wiki/General-Performance-and-Encoding-Issues  

https://help.twitch.tv/s/article/broadcast-guidelines?language=en_US#recommended  
