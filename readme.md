## dotfiles
Recursively clone to include submodules (for vim stuff)
```
mkdir -p ~/Work/dotfiles
git clone --recurse-submodules -j8 git@github.com:jtanadi/dotfiles.git ~/Work/dotfiles
```

Symlink dotfiles to make updates easier
```
ln -s {filepath} {linkpath}
```

Install `typescript` to enable vim Language Server Protocol (for `:ALEGoToDefinition`)
```
npm i -g typescript
```
