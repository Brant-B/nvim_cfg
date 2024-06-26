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
|`<leader><space>`|在当前文件夹搜索文件名|Telescope find_files <CR>|!!!|
|`<leader>o`|打开最近使用的文件|:Telescope oldfiles|!|
|`<leader>g`|在当前文件夹搜索符号|:Telescope live_grep|!!!|
|`<CR>`|将折叠光标位置代码|谁用vim还用回车呀|!!|
|`\\`|打开关闭文件树|: Neotree|!!!|
|`\|`|打开关闭文件大纲|: Outline|!!!|

## 待增加功能

- 增加对按键的配置的管理，全部都放到keysmap里面？（有必要吗）
  - 将确定以及肯定用的功能加入keysmap
- 对LSP要做适用化设计
  - LSP 不要报错，我现在不要lsp报错
  - 或者实现clangd 实现可以解析头文件 bear 什么的
  - compile_commands.json
- 如果能将copilot 集成到vim中，完全就可以抛弃vscode了
  - 安装成功了，但具体怎么用还不清楚
- 如何实现后退的操作?
