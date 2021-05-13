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

| Key binding | Description              |
|:------------|:-------------------------|
| `SPC c D`   | Jump to references       |
| `SPC c a`   | Execute Intention Action |
| `SPC c c`   | Compile                  |
| `SPC c d`   | Jump to definition       |
| `SPC c f`   | Format buffer/region     |
| `SPC c i`   | Find implementations     |
| `SPC c k`   | Show documentation       |
| `SPC c o`   | Organize imports         |
| `SPC c r`   | Rename                   |
| `SPC c t`   | Find type definition     |
| `SPC c C`   | Recompile                |

### +file

| Key binding | Description               |
|:------------|:--------------------------|
| `SPC f c`   | Open project editorconfig |
| `SPC f r`   | Recent files              |
| `SPC f s`   | Save file                 |
| `SPC f R`   | Rename/move file          |
| `SPC f y`   | Copy filename             |

### +git

| Key binding      | Description           |
|:-----------------|:----------------------|
| `SPC g '`        | GitHub menu           |
| `SPC g .`        | Git file actions      |
| `SPC g /`        | Git menu              |
| `SPC g [`, `[ d` | Jump to previous hunk |
| `SPC g ]`, `] d` | Jump to next hunk     |
| `SPC g b`        | Switch branch         |
| `SPC g r`        | Revert hunk           |
| `SPC g s`        | Status                |
| `SPC g t`        | Time machine          |
| `SPC g B`        | Blame                 |
| `SPC g C`        | Clone                 |
| `SPC g F`        | Fetch                 |
| `SPC g S`        | Git stage file        |

#### +create

| Key binding | Description     |
|:------------|:----------------|
| `SPC g c b` | Branch          |
| `SPC g c p` | Pull request    |
| `SPC g c r` | Initialize repo |
| `SPC g c R` | Clone repo      |

#### +list

| Key binding | Description        |
|:------------|:-------------------|
| `SPC g l p` | List pull requests |

#### +open

| Key binding | Description           |
|:------------|:----------------------|
| `SPC g o o` | Browse file or region |
| `SPC g o p` | Browse a pull request |

### +help

| Key binding | Description  |
|:------------|:-------------|
| `SPC h t`   | Change theme |

### +insert

| Key binding                            | Description           |
|:---------------------------------------|:----------------------|
| `SPC i e` (`M-SPC i e` in insert mode) | Insert emoji/unicode  |
| `SPC i s` (`M-SPC i s` in insert mode) | Insert Live Template  |
| `SPC i u` (`M-SPC i u` in insert mode) | Insert emoji/unicode  |
| `SPC i y` (`M-SPC i y` in insert mode) | Insert from clipboard |

### +open

| Key binding | Description               |
| :---------- | :------------------------ |
| `SPC o f`   | New window                |
| `SPC o F`   | Select window             |
| `SPC o o`   | Reveal in filer           |
| `SPC o p`   | Toggle Project View       |
| `SPC o P`   | Find file in Project View |
| `SPC o t`   | Open terminal             |
| `SPC o T`   | Open terminal here        |

### +project

| Key binding | Description              |
|:------------|:-------------------------|
| `SPC p !`   | Run cmd in project root  |
| `SPC p i`   | Invalidate project cache |
| `SPC p p`   | Switch projects          |
| `SPC p R`   | Run project              |
| `SPC p t`   | Show TODO                |
| `SPC p z`   | List project tasks       |

### +toggle

| Key binding | Description           |
|:------------|:----------------------|
| `SPC t b`   | Presentation Mode     |
| `SPC t F`   | Fullscreen            |
| `SPC t l`   | Line numbers          |
| `SPC t r`   | Read-only mode        |
| `SPC t w`   | Soft line wrapping    |
| `SPC t z`   | Distraction Free Mode |

### +search

| Key binding        | Description    |
|:-------------------|:---------------|
| `SPC /`, `SPC s p` | Search project |

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

| Key binding | Description               |
|:------------|:--------------------------|
| `SPC w m`   | Maximize window (unsplit) |

### easymotion

You need [AceJump](https://plugins.jetbrains.com/plugin/7086-acejump) &
[IdeaVim-EasyMotion](https://plugins.jetbrains.com/plugin/13360-ideavim-easymotion)
installed to enable these key bindings:

| Key binding   | Description              |
|:--------------|:-------------------------|
| `SPC g s b`   | `<Plug>(easymotion-bl)`  |
| `SPC g s e`   | `<Plug>(easymotion-el)`  |
| `SPC g s f`   | `<Plug>(easymotion-f)`   |
| `SPC g s F`   | `<Plug>(easymotion-F)`   |
| `SPC g s j`   | `<Plug>(easymotion-j)`   |
| `SPC g s k`   | `<Plug>(easymotion-k)`   |
| `SPC g s n`   | `<Plug>(easymotion-n)`   |
| `SPC g s N`   | `<Plug>(easymotion-N)`   |
| `SPC g s s`   | `<Plug>(easymotion-s2)`  |
| `SPC g s t`   | `<Plug>(easymotion-t)`   |
| `SPC g s T`   | `<Plug>(easymotion-T)`   |
| `SPC g s w`   | `<Plug>(easymotion-wl)`  |
| `SPC g s g e` | `<Plug>(easymotion-gel)` |

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

## Tips

### Reformat Code on Save

Add the following into your `.ideavimrc`:

```vim
nnoremap <Leader>fs :<C-u>action ReformatCode<CR>:<C-u>w<CR>
```

## Similar Projects

- [intellimacs](https://github.com/MarcoIeni/intellimacs) - Spacemacs' like key bindings for IntelliJ platform
