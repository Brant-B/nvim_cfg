# NEOVIM 配置

## 介绍

使用NVIM的最小化的起点，根据自己需求再增加需要的功能。
而不是不了解自己的需求，一股脑地使用别人的配置。

## 安装



### 安装 nvim_cfg

> **NOTE**
> [Backup] your previous configuration

Neovim's configurations are located under the following paths, depending on your OS:

| OS | PATH |
| :- | :--- |
| Linux, MacOS | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| Windows (powershell)| `$env:USERPROFILE\AppData\Local\nvim\` |


#### 下载配置项


```sh
git clone git@github.com:Brant-B/nvim_cfg.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```


### 安装完成后

启动NVIM！

```sh
nvim
```

Lazy will install all the plugins you have. 
Use `:Lazy` to view current plugin status. Hit `q` to close the window.

通读 `init.lua` 文件，了解更多关于使用 Neovim 的信息。
其中还包含了一些常用的插件的例子。

### 快速开始吧

[The Only Video You Need to Get Started with Neovim](https://youtu.be/m8C0Cq9Uv9o)

### FAQ

* 为什么我们的配置 `init.lua` 要设置为一个单独的文件呢？分成多个文件肯定会更好理解呀。
   * 设置该起始nvim的目的就是作为一个教学工具
   * 并作为一个参考设置，每个人都能很轻松`git clone` 下来，作为自己配置的基础
   * 随着你慢慢学习 Neovim 和lua 语言，你就会考虑拆分`init.lua` 文件
   * [kickstart-modular.nvim](https://github.com/dam9000/kickstart-modular.nvim)
* Discussions on this topic can be found here:
   * [Restructure the configuration](https://github.com/nvim-lua/kickstart.nvim/issues/218)
   * [Reorganize init.lua into a multi-file setup](https://github.com/nvim-lua/kickstart.nvim/pull/473)
