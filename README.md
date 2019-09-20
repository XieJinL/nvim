# My NeoVim Config

## 安装依赖
1. install clang for c/c++ `sudo pacman -S clang`
2. install pynvim for python `pip3 install --user --no-binary :all: pynvim`
3. install fzf for fzf `sudo pacman -S fzf`
4. install ctags for jump function define list `sudo pacman -S ctags`
5. install figlet for inputing text ASCII art `sudo pacman -S figlet`
6. install xsel for use system clipboard `sudo pacman -S xsel`
7. install live-server for html-preview `sudo pacman -S nodejs npm` and `sudo npm install -g live-server`
8. install flake8 for python linting `sudo pip install flake8`

## Keyboard Shortcuts
### command-mode
`:w!!` 提权保存

### insert-mode
| Command | Motion          |
| ------- | ---             |
| jk      | 进入normal-mode |
| C-b     | left            |
| C-f     | right           |
| C-d     | delete          |

### ~~visual-mode~~

### nnoremap-mode
- `leader=space`
- **以下命令都有前缀键leader**

| Command | Motion                                |
| ------- | ---                                   |
| s       | 保存                                  |
| S       | 重新加载init.vim                      |
| qq      | 退出nvim                              |
| enter   | 取消高亮                              |
| f       | 查找<++>删除并进入insert-mode         |
| w/      | 左右分屏                              |
| w-      | 上下分屏                              |
| wh      | 向左切换光标所在屏幕                  |
| wj      | 向下切换光标所在屏幕                  |
| wk      | 向上切换光标所在屏幕                  |
| wl      | 向右切换光标所在屏幕                  |
| w=      | 平均调整屏幕                          |
| bp      | 上一个buffer                          |
| bn      | 下一个buffer                          |
| bD      | 删除当前buffer                        |
| tN      | 新建一个tab                           |
| tn      | 下一个tab                             |
| tp      | 上一个tab                             |
| pat     | 打开或关闭代码检查(ale)               |
| pad     | 查看代码错误的详细信息(ale)           |
| R       | 打开文件管理器Ranger                  |
| k       | 标记高亮一个单词(vim-interestingwors) |
| K       | 取消标记(vim-interestingwors)         |
| pn      | 格式化代码(Neoformat)                 |
| pu      | 打开修改记录(undotree)                |
| F       | 查找修改(far)                         |
| pfd     | 执行修改(far)                         |
| pp      | markdown预览(markdownpreview)         |
| ps      | 关闭markdown预览(markdownpreview)     |
| pmt     | markdown自动排版表格(tablemode)       |
| cc      | 注释代码(NERDCommenter)               |
| cu      | 取消注释(NERDCommenter)               |
| c space | 智能注释(NERDCommenter)               |
| cA      | 在代码后添加注释(NERDCommenter)       |
| ca      | 改变注释符号(NERDCommenter)           |
| G       | 打开Goyo模式(vim-Goyo)                |

- 以下命令不需要leader键

| Command   | Motion                                                 |
| -------   | ---                                                    |
| F2        | 打开init.vim                                           |
| F5        | 重新建立ctags索引列表                                  |
| 上下左右  | 调整分屏窗口的大小                                     |
| Enter     | 选择配对符号中的字符(向下选择)(wildfire)               |
| BackSpace | 选择配对符号中的字符(向上选择)(wildfire)               |
| C-n       | multi_cursor_start_word_key(vim-multiple-cursors)      |
| A-n       | multi_cursor_select_all_word_key(vim-multiple-cursors) |
| `g<C-n>`  | start_key(vim-multiple-cursors)                        |
| `g<A-n>`  | select_all_key(vim-multiple-cursors)                   |
| C-x       | skip_key(vim-multiple-cursors)                         |
| T         | 打开Vista(Vista){类似tagbar}                           |
| C-t或C-p  | 打开FZF(vim-fzf)                                       |

## ctags使用(函数跳转)
| command          | use                                      |
| -------          | ---                                      |
| `<C-]>`          | 跳转到匹配当前光标所在关键字的第一处标签 |
| `g<C-]>`         | 如果有多处标签则展开列表                 |
| :tag {keyword}   | 同`<C-]>`                                |
| :tjump {keyword} | 同`g<C-]>`                               |
| :pop 或 `<C-t>`  | 反向遍历标签历史                         |
| :tag             | 正向遍历标签历史                         |
| :tnext           | 下                                       |
| :tprev           | 上                                       |
| :tfirst          | 第一处                                   |
| :tlast           | 最后一处                                 |
| :tselect         | 从标签列表中进行选择                     |

## Quickfix列表
> `:make` `grep` `vimgrep`会使用quickfix列表

> `:lmake` `:lgrep` `:lvimgrep`会生成位置列表

| command  | use                    |
| -------  | ---                    |
| :cnext   | 跳到下一项             |
| :cprev   | 跳到上一项             |
| :cfirst | 首项                   |
| :clast  | 最后一项               |
| :cnfile | 跳到下个文件的第一项   |
| :cpfile | 跳到上个文件的最后一项 |
| :cc N   | 跳到第n项              |
| :copen  | 打开quickfix窗口       |
| :cclose | 关闭quickfix窗口       |

> 位置列表把`c`变成`l`
