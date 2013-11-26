#!/bin/bash

# Very simple script for fresh installation -- Nothing else ŁØŁ

cd $HOME
git https://github.com/smlb/dotfiles.git
cd dotfiles

mv * $HOME
mv ~/ncmpcpp ~/.ncmpcpp
rm README.md 

echo "Done!"

