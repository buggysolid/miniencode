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

### Example encoding

```
Output #0, matroska, to '../First-8K-Video-from-Space~orig.mp4.720p.x265.mkv':
  Metadata:
    major_brand     : mp42
    minor_version   : 0
    compatible_brands: mp42mp41
    encoder         : Lavf59.29.100
  Stream #0:0(eng): Video: hevc, yuvj420p(pc, bt709, progressive), 1280x720 [SAR 9:8 DAR 2:1], q=2-31, 23.98 fps, 1k tbn (default)
    Metadata:
      creation_time   : 2018-10-30T23:45:37.000000Z
      handler_name    : ?Mainconcept Video Media Handler
      vendor_id       : [0][0][0][0]
      encoder         : Lavc59.39.100 libx265
    Side data:
      cpb: bitrate max/min/avg: 3500000/0/0 buffer size: 8096000 vbv_delay: N/A
  Stream #0:1(eng): Audio: aac (LC) ([255][0][0][0] / 0x00FF), 48000 Hz, stereo, fltp, 128 kb/s (default)
    Metadata:
      creation_time   : 2018-10-30T23:45:37.000000Z
      handler_name    : #Mainconcept MP4 Sound Media Handler
      vendor_id       : [0][0][0][0]
      encoder         : Lavc59.39.100 aac
frame= 4535 fps= 20 q=35.8 Lsize=   18816kB time=00:03:09.16 bitrate= 814.8kbits/s speed=0.827x
video:15762kB audio:2957kB subtitle:0kB other streams:0kB global headers:2kB muxing overhead: 0.514984%
x265 [info]: frame I:     36, Avg QP:25.84  kb/s: 10502.35
x265 [info]: frame P:   1086, Avg QP:27.79  kb/s: 2122.49
x265 [info]: frame B:   3413, Avg QP:34.84  kb/s: 119.91
x265 [info]: Weighted P-Frames: Y:7.8% UV:5.9%
x265 [info]: consecutive B-frames: 6.4% 3.0% 5.9% 49.3% 35.4%

encoded 4535 frames in 228.29s (19.87 fps), 681.89 kb/s, Avg QP:33.08
[aac @ 0x1aee4540] Qavg: 1099.898
[ec2-user@ip-172-31-34-139 miniencode]$ ls -lh ../
total 3.1G
-rw-rw-r-- 1 ec2-user ec2-user 3.1G Nov  2  2018 First-8K-Video-from-Space~orig.mp4
-rw-rw-r-- 1 ec2-user ec2-user  19M Aug 19 10:29 First-8K-Video-from-Space~orig.mp4.720p.x265.mkv
drwxrwxr-x 4 ec2-user ec2-user  171 Aug 19 10:25 miniencode
[ec2-user@ip-172-31-34-139 miniencode]$
```
