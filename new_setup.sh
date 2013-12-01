# A simple script for automatize the process of configuration 
#
# Really, really simple!

cd $HOME

if [ -f /usr/bin/git ]
then
	git clone https://github.com/smlb/dotfiles.git
else
	echo "You don't have git installed, please install "git" package"
fi

cd $HOME/dotfiles

if [ -f $HOME/.config ]
then 
	mv $HOME/dotfiles/.config/* $HOME/.config
else
	mkdir -p $HOME/.config && mv $HOME/dotfiles/.config $HOME/.config
	rm -r $HOME/dotfiles/.config
	mv $HOME/dotfiles/* $HOME
fi
