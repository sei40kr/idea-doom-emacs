# idea-doom-emacs

Doom Emacs key bindings in IdeaVim.

## Install

```vim
source /path/to/idea-doom-emacs/ideavimrc
" If you want expand-region (Extend/Shrink Selection) key bindings
source /path/to/idea-doom-emacs/expand-region.vim
" If you want camel case movement and editing
source /path/to/idea-doom-emacs/subword-mode.vim
```

## Plugins

| Plugin                                                                                                                                            | Required by                           |
|:--------------------------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------|
| [AceJump](https://plugins.jetbrains.com/plugin/7086-acejump), [IdeaVim-EasyMotion](https://plugins.jetbrains.com/plugin/13360-ideavim-easymotion) | `g s s`                               |
| [Find Pull Request](https://plugins.jetbrains.com/plugin/8262-find-pull-request)                                                                  | Browse a pull request ( `SPC g o p` ) |

## Similar Projects

- [intellimacs](https://github.com/MarcoIeni/intellimacs) - Spacemacs' like key bindings for IntelliJ platform
