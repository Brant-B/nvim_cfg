# NEOVIM 配置

## 介绍

使用NVIM的最小化的起点，根据自己需求再增加需要的功能。
而不是不了解自己的需求，一股脑地使用别人的配置。

## Installation



### Install nvim_cfg

> **NOTE**
> [Backup] your previous configuration

Neovim's configurations are located under the following paths, depending on your OS:

| OS | PATH |
| :- | :--- |
| Linux, MacOS | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| Windows (powershell)| `$env:USERPROFILE\AppData\Local\nvim\` |


#### 下载配置项
> **NOTE**
> If following the recommended step above (i.e., forking the repo), replace
> `nvim-lua` with `<your_github_username>` in the commands below


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

* Can I keep my existing configuration in parallel to kickstart?
  * Yes! You can use [NVIM_APPNAME](https://neovim.io/doc/user/starting.html#%24NVIM_APPNAME)`=nvim-NAME`
    to maintain multiple configurations. For example, you can install the kickstart
    configuration in `~/.config/nvim-kickstart` and create an alias:
    ```
    alias nvim-kickstart='NVIM_APPNAME="nvim-kickstart" nvim'
    ```
    When you run Neovim using `nvim-kickstart` alias it will use the alternative
    config directory and the matching local directory
    `~/.local/share/nvim-kickstart`. You can apply this approach to any Neovim
    distribution that you would like to try out.
* What if I want to "uninstall" this configuration:
  * See [lazy.nvim uninstall](https://github.com/folke/lazy.nvim#-uninstalling) information
* Why is the kickstart `init.lua` a single file? Wouldn't it make sense to split it into multiple files?
  * The main purpose of kickstart is to serve as a teaching tool and a reference
    configuration that someone can easily use to `git clone` as a basis for their own.
    As you progress in learning Neovim and Lua, you might consider splitting `init.lua`
    into smaller parts. A fork of kickstart that does this while maintaining the 
    same functionality is available here:
    * [kickstart-modular.nvim](https://github.com/dam9000/kickstart-modular.nvim)
  * Discussions on this topic can be found here:
    * [Restructure the configuration](https://github.com/nvim-lua/kickstart.nvim/issues/218)
    * [Reorganize init.lua into a multi-file setup](https://github.com/nvim-lua/kickstart.nvim/pull/473)

