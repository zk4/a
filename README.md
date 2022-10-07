
<p align="center" width="100%">
<img src="https://see.fontimg.com/api/renderfont4/514Pa/eyJyIjoiZnMiLCJoIjoxMTYsInciOjEwMDAsImZzIjoxMTYsImZnYyI6IiNERjE2REUiLCJiZ2MiOiIjRkZGRkZGIiwidCI6MX0/YWN0aW9u/crescendo.png" alt="Art Deco fonts"> 
</p>
The simplest, yet powerful autocomplete tool for command line with fzf. 

It follows the intuitive way to write reusable code. No magic. 



![demo](https://zk4bucket.oss-cn-beijing.aliyuncs.com/uPic/demo.gif)


# How to use 
1. Install [fzf](https://github.com/junegunn/fzf) first. 
2. Install [bat](https://github.com/sharkdp/bat) for colorize. 
3. Set ${pwd}/action/bin in your PATH, you are ready to go.


# Quick start
Have fun with the built-in actions
```bash
> action
```



# Make your own action

1. Fork this repo.

2. Code some script in any language you want, put them in ${pwd}/actions/.


## Write an action in sh 




Ex: The simplest script demo, check out actions/python ftp.sh

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



## Input Variable 

Variable could be input typing, also could be fzf list or any other source. Use you imagination.

util/base.sh supplies 3 useful input wrapper funtions for common bash usage.  



**simple input**

Simple as it is, robust but without color.

![image-20221007145459152](https://zk4bucket.oss-cn-beijing.aliyuncs.com/uPic/image-20221007145459152.png)

```bash
directory=$(simple_input "文件夹位置: ")
```



**color input**

color input is a bit tricky. If you input may represent a relative path, you should always add this code `localBranch="${localBranch/#\~/$HOME}"`, otherwie ~ won't expand because of input is a pure string.

![image-20221007144734144](https://zk4bucket.oss-cn-beijing.aliyuncs.com/uPic/image-20221007144734144.png)

``` bash
color_input localBranch "本地分支名" 
localBranch="${localBranch/#\~/$HOME}"
```



**fzf input**

![2022-10-07 14.35.32](https://zk4bucket.oss-cn-beijing.aliyuncs.com/uPic/2022-10-07%2014.35.32.gif)

```bash
remoteBranch=`fzf_input "远程分支名" git branch -r`
```



## Similar tools

[beavr](https://github.com/denisidoro/beavr), [bro](https://github.com/hubsmoke/bro), [cheat](https://github.com/cheat/cheat), [cheat.sh](https://github.com/chubin/cheat.sh), [cmdmenu](https://github.com/amacfie/cmdmenu), [eg](https://github.com/srsudar/eg), [how2](https://github.com/santinic/how2), [howdoi](https://github.com/gleitz/howdoi)  [tldr](https://github.com/tldr-pages/tldr), [navi](https://github.com/denisidoro/navi)


## reference 
https://seb.jambor.dev/posts/improving-shell-workflows-with-fzf/



