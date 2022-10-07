
<p align="center" width="100%">
<img src="https://see.fontimg.com/api/renderfont4/514Pa/eyJyIjoiZnMiLCJoIjoxMTYsInciOjEwMDAsImZzIjoxMTYsImZnYyI6IiNERjE2REUiLCJiZ2MiOiIjRkZGRkZGIiwidCI6MX0/YWN0aW9u/crescendo.png" alt="Art Deco fonts"> 
</p>
The simplest, yet powerful autocomplete tool for command line with fzf. 



![demo](https://zk4bucket.oss-cn-beijing.aliyuncs.com/uPic/demo.gif)


# How to use 
1. Install [fzf](https://github.com/junegunn/fzf) first. 
2. Set ${pwd}/action/bin in your PATH, you are ready to go.

# Make your own action

1. Fork this repo.

2. Code some script in any language you want, put them in ${pwd}/actions/.


## Write an action in sh 
util/base.sh supplies some useful wrapper funtion for common bash usage.  EX: color ouput ,easy input.



Ex: The simplest ftp script in actions/ftp.sh

``` bash
#!/bin/bash
python -m pyftpdlib
```



Ex: With Color Input, turn Spotlight index on or off. actions/toggle spotlight.sh

``` bash
#!/bin/bash
source "$(dirname "$0")/../util/base.sh"
# -------------------------------------------
input flick "开或关 (on|off)" 
sudo mdutil -a -i $flick
```



![2022-10-07 11.57.21](https://zk4bucket.oss-cn-beijing.aliyuncs.com/uPic/2022-10-07%2011.57.21.gif)



Ex: With Simple Input,  actions/按升序显示目标文件夹大小.sh

``` bash
#!/bin/bash
source "$(dirname "$0")/../util/base.sh"
# -------------------------------------------
directory=$(input2 "文件夹位置: ")
du -h -d 2 $directory | gsort -h

```

![2022-10-07 12.01.35](https://zk4bucket.oss-cn-beijing.aliyuncs.com/uPic/2022-10-07%2012.01.35.gif)
