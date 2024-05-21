if [ -n "$BASH_VERSION" ]; then
  if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
  fi
fi

# opam configuration
test -r /home/christopher/.opam/opam-init/init.sh && . /home/christopher/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
