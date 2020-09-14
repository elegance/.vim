# .vim
My vim(8) configures. All third party packages is managed by vim8's builtin package manager.

# 原理
Vim8 会自动加载 `~/.vim/pack/*/start/`，这里我们使用了 `~/.vim/pack/vendor/start/`

不想自动加载的插件可以放到 ：`~/.vim/pack/*/opt`， 需要用到的时候，执行 :`packadd pluginname` 就可以了

# 使用
```
git clone --recursive https://github.com/elegance/.vim.git ~/.vim 
```

# 管理
```bash
# 整个 .vim 目录做成一个 git 仓库，初始化 submodule
git submodule init

# 添加一个插件
git submodule add https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree

# 升级所有第三方插件，只要执行
git submodule update --recursive --remote
```