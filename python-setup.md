```
# https://github.com/pandas-dev/pandas/issues/27532
# brew install xz
export LDFLAGS="-L/opt/homebrew/opt/xz/lib $LDFLAGS"
export CPPFLAGS="-I/opt/homebrew/opt/xz/include $CPPFLAGS"
export PKG_CONFIG_PATH="/opt/homebrew/opt/xz/lib/pkgconfig:$PKG_CONFIG_PATH"
# YOU CANNOT HAVE THE GNUBINS in your PATH when you run this
export PYTHON_CONFIGURE_OPTS="--enable-shared"
```

```
brew update
brew install pyenv
python-build 3.12.8 ~/.local/pythons/3.12.8
cd ~/.local/venvs
/Users/uu/.local/pythons/3.12.8/bin/python -m venv default-3.12.8
/Users/uu/.local/venvs/default-3.12.8/bin/python -m pip install --upgrade pip
cd ~/.local/bin
ln -s /Users/uu/.local/venvs/default-3.12.8/bin/python python
ln -s /Users/uu/.local/venvs/default-3.12.8/bin/pip pip
ln -s /Users/uu/.local/venvs/default-3.12.8/bin/pip3 pip3
```
