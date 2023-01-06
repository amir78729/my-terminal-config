```shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cd .vim
mkdir colors
cd colors
touch darcula.vim
```

copy `darcula.vim` codes into `~/.vim/colors/darcula.vim` file

use `.vimrc` for your `~/.vimrc` file.

![image](https://user-images.githubusercontent.com/44297246/209336931-e9724f63-81c5-4b73-abe2-4c220578c793.png)

run this commands in vim:
- `PlugInstall`
