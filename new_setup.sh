#!/bin/bash

# Very simple script for fresh installation -- Nothing else ŁØŁ



cd $HOME
git clone https://github.com/smlb/dotfiles.git
cd dotfiles

mv * $HOME
rm README.md 

echo "Done!"
