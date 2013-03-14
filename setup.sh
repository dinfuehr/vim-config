echo 'Creating symlinks'

rm -rf ~/.vim
rm -f ~/.vimrc

DIR="$( cd "$( dirname "$0" )" && pwd )"
ln -s $DIR ~/.vim
ln -s $DIR/vimrc ~/.vimrc
