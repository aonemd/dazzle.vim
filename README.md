<div align="center">
  <h1>
    dazzle.vim
  </h1>
</div>

Make dazzling presentations without leaving your best editor, Vim.

![screenshot](https://user-images.githubusercontent.com/16504838/110614591-2aa06200-819b-11eb-8fe1-772730a9fb81.png)

### Installation

0. Install [figlet](http://www.figlet.org/),
   [toilet](http://caca.zoy.org/wiki/toilet),
   [cowsay](https://web.archive.org/web/20071026043648/http://www.nog.net/~tony/warez/cowsay.shtml),
   and [goyo.vim](https://github.com/junegunn/goyo.vim) for better integration
1. Install `aonemd/dazzle.vim` using a plugin manger such as:
    [vim-plug](https://github.com/junegunn/vim-plug),
    [NeoBundle](https://github.com/Shougo/neobundle.vim),
    [Vundle](https://github.com/gmarik/Vundle.vim), or
    [Pathogen](https://github.com/tpope/vim-pathogen).
2. Call `Dazzle` command for your presentation files only:
3. Open your presentations: `vim *.pres`
4. Zoom-in on your terminal and dazzle everyone!
  ```viml
  " use dazzle for .pres files
  autocmd BufNewFile,BufRead *.pres :Dazzle
  ```

### License

See [LICENSE](https://github.com/aonemd/dazzle.vim/blob/master/LICENSE).
