# Add these lines to your .bash_profile at the top
# >>>>>>>>>>>>>>>>>>

# load everything in .bashrc
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# Change prompt (Originally was "\h:\W \u\$")
# <Basename of current directory> <Git branch> 
# __git_ps1 is a function created by the git-completion script that's installed in bashrc
# __path_from_gitroot is a custom function
export PS1='$(__path_from_gitroot)$(__git_ps1 " (%s)")\$ '

# <<<<<<<<<<<<<<<<<<
