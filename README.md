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

## Key Bindings

### +buffer

| Key binding          | Description        |
|:---------------------|:-------------------|
| `SPC b d`, `SPC b k` | Kill buffer        |
| `SPC b s`            | Save buffer        |
| `SPC b K`            | Kill all buffers   |
| `SPC b N`            | New empty buffer   |
| `SPC b O`            | Kill other buffers |
| `SPC b S`            | Save all buffers   |

### +code

| Key binding | Description                                  |
|:------------|:---------------------------------------------|
| `SPC c D`   | Jump to references                           |
| `SPC c a`   | Execute code action (Show Intention Actions) |
| `SPC c c`   | Compile                                      |
| `SPC c d`   | Jump to definition                           |
| `SPC c f`   | Format buffer/region definition              |
| `SPC c i`   | Find implementations                         |
| `SPC c k`   | Jump to documentation                        |
| `SPC c o`   | Organize imports                             |
| `SPC c r`   | Rename                                       |
| `SPC c t`   | Find type definition                         |
| `SPC c C`   | Recompile                                    |

### +file

| Key binding | Description               |
|:------------|:--------------------------|
| `SPC f c`   | Open project editorconfig |
| `SPC f r`   | Recent files              |
| `SPC f s`   | Save file                 |
| `SPC f R`   | Rename file               |

### +git

| Key binding      | Description           |
|:-----------------|:----------------------|
| `SPC g [`, `[ d` | Jump to previous hunk |
| `SPC g ]`, `] d` | Jump to next hunk     |
| `SPC g b`        | Switch branch         |
| `SPC g r`        | Revert hunk           |
| `SPC g B`        | Blame                 |
| `SPC g F`        | Fetch                 |
| `SPC g S`        | Git stage file        |

#### +create

| Key binding | Description  |
|:------------|:-------------|
| `SPC g c p` | Pull request |

#### +list

| Key binding | Description        |
|:------------|:-------------------|
| `SPC g l p` | List pull requests |

#### +open

| Key binding | Description           |
|:------------|:----------------------|
| `SPC g o o` | Browse file or region |
| `SPC g o p` | Browse a pull request |

### +insert

| Key binding                            | Description             |
|:---------------------------------------|:------------------------|
| `SPC i s` (`M-SPC i s` in insert mode) | Snippet (Live Template) |

### +open

| Key binding | Description                  |
|:------------|:-----------------------------|
| `SPC o P`   | Find file in project sidebar |

### +toggle

| Key binding | Description                      |
|:------------|:---------------------------------|
| `SPC t b`   | Big mode (Presentation Mode)     |
| `SPC t F`   | Frame fullscreen                 |
| `SPC t l`   | Line numbers                     |
| `SPC t r`   | Read-only mode                   |
| `SPC t w`   | Soft line wrapping               |
| `SPC t z`   | Zen mode (Distraction Free Mode) |

### +search

| Key binding | Description    |
|:------------|:---------------|
| `SPC s p`   | Search project |

### +window

| Key binding          | Equivalent to |
|:---------------------|:--------------|
| `SPC w c`, `SPC w d` | `C-w c`     |
| `SPC w h`            | `C-w h`     |
| `SPC w j`            | `C-w j`     |
| `SPC w k`            | `C-w k`     |
| `SPC w l`            | `C-w l`     |
| `SPC w s`            | `C-w s`     |
| `SPC w v`            | `C-w v`     |
| `SPC w w`            | `C-w w`     |
| `SPC w W`            | `C-w W`     |

### expand-region

You need to source `expand-region.vim` to enable these key bindings:

| Key binding | Description                                       |
|:------------|:--------------------------------------------------|
| `C-+`       | Increase selected region by semantic units        |
| `C-=`       | Contract the selected region to its previous size |

### Misc

| Key binding | Description                          |
|:------------|:-------------------------------------|
| `SPC RET`   | Jump to bookmark                     |
| `SPC <`     | Switch buffer (Switcher)             |
| `SPC [`     | Insert blank line above current line |
| `SPC ]`     | Insert blank line below current line |

## Similar Projects

- [intellimacs](https://github.com/MarcoIeni/intellimacs) - Spacemacs' like key bindings for IntelliJ platform
