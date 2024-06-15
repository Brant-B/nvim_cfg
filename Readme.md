# NEOVIM 配置

## 安装

### 安装 nvim_cfg

> **NOTE**
> [Backup] your previous configuration

Neovim's configurations are located under the following paths, depending on
your OS:

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

### 快速开始

[The Only Video You Need to Get Started with Neovim](https://youtu.be/m8C0Cq9Uv9o)

## 概念

在nvim中，打开的每个文件都属于一个buffer

## 快捷键

|快捷键|对应功能|对应命令|常用程度|
|------|--------|------|----------|
|`<leader><space>`|在当前文件夹搜索文件名|:Telescope find_files <CR>|!!!|
|`<leader>o`|打开最近使用的文件|:Telescope oldfiles|!|
|`<leader>g`|在当前文件夹搜索符号|:Telescope live_grep|!!!|
|`Z`|将折叠光标位置代码|还是没找到合适的按键|!!|
|`\\`|打开关闭文件树|: Neotree|!!!|
|`\|`|打开关闭文件大纲|: Outline|!!!|
