echo 'Creating symlinks'

rm -r /root/.vim
rm /root/.vimrc

DIR="$( cd "$( dirname "$0" )" && pwd )"
ln -s $DIR /root/.vim
ln -s $DIR/vimrc /root/.vimrc
