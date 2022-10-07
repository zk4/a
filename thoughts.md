
# in one line
echo "foo\nbar" | fzf --read0

# multi selection
echo "foo\nbar" | fzf -m 

# for multi selection
echo `echo "-p 8088:8088\n-p 9000:9000" | fzf -m` 
