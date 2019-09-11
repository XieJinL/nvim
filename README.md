# My NeoVim Config

## 安装依赖
1. install clang for c/c++ `sudo pacman -S clang`
2. install pynvim for python `pip3 install --user --no-binary :all: pynvim`
3. install fzf for fzf `sudo pacman -S fzf`
4. install ctags for jump function define list `sudo pacman -S ctags`
5. install figlet for inputing text ASCII art `sudo pacman -S figlet`

## Keyboard Shortcuts
### command-mode
`:w!!` 提权保存

### insert-mode
| Command | Motion          |
| ------- | ---             |
| jk      | 进入normal-mode |
| C-b     | left            |
| C-f     | right           |
| C-n     | down            |
| C-p     | up              |
| C-e     | 跳到行尾        |
| C-a     | 跳到行首        |
| C-d     | delete          |

### visual-mode
| Command | Motion |
| ------- | ---    |
| H       | 0      |
| L       | $      |

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
| pt      | 打开代码函数列表(tagbar)              |
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
| ca      | 改变注释符号dt(NERDCommenter)         |

- 以下命令不需要leader键

| Command  | Motion             |
| -------  | ---                |
| F2       | 打开init.vim       |
| 上下左右 | 调整分屏窗口的大小 |
| J        | 6j                 |
| K        | 6k                 |
| H        | 0                  |
| L        | $                  |

