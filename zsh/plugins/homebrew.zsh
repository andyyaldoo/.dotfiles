: <<'END'
Warning: Homebrew's sbin was not found in your PATH but you have installed                                                                                                 │~
formulae that put executables in /usr/local/sbin.                                                                                                                          │~
Consider setting the PATH for example like so                                                                                                                              │~
    echo 'export PATH="/usr/local/sbin:$PATH"' >> ~/.zshrc
END
export PATH="/usr/local/sbin:$PATH"
