onedrive_dir=$(find ~ -maxdepth 1 -type d -name 'OneDrive*')

if [ $? ]; then
  pushd "$onedrive_dir/init" > /dev/null
  for script in *; do
    source $script
  done
  popd > /dev/null
fi
