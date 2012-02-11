echo 'Creating symlinks'

rm -r ~/.vim
rm ~/.vimrc

DIR="$( cd "$( dirname "$0" )" && pwd )"
ln -s $DIR ~/.vim
ln -s $DIR/vimrc ~/.vimrc
