init_dir=$(find -L ~ -maxdepth 2 -type d -path "${HOME}/OneDrive*/init")

if [ ! -z "$init_dir" ]; then
  pushd "$init_dir" > /dev/null
  for script in *.zsh; do
    source $script
  done
  popd > /dev/null
fi
