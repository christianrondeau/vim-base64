# Vim Base64

Encodes/decodes base64 strings using `base64` on Linux and `Python` on Windows

# Installation

## Prerequisites

* On Linux, you need `base64` from `coreutils` installed.
* On Windows, you need [Python](https://www.python.org/downloads/windows/).

## Vundle

Use your preferred Vim plugin installation method. If you like [Vundle](https://github.com/VundleVim/Vundle.vim):

Add to your `.vimrc`:

    Plugin 'christianrondeau/vim-base64'

And install it:

    :so ~/.vimrc
    :PluginInstall

# Usage

You can encode and decode base64 string in several modes.

Note that if you provide invalid base64 strings, your text will ben replaced by the error message.

## In a Visual Selection (`v`)

After replacement, the new text will automatically be visually selected.

* `<leader>btoa` to convert from base64 to a string
* `<leader>atob` to convert from a string to base64
