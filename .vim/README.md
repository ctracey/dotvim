SETUP
=====

Once you've cloned this repo you need to follow these steps to get it up and running


clone dotfiles
clone dotvim

create symlinks
  see scripts in dropbox

xcode-select --install
brew install wget

install pathogen
read https://gist.github.com/romainl/9970697
  mkdir ~/.vim/autoload/
  mkdir ~/.vim/bundle/
  wget https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim > ~/.vim/autoload/pathogen.vim

initialise submodules for vim packages
cd ~/.vim
git submodule update --init --recursive

brew install the_silver_searcher
