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
# For the timestamp format, see https://bneijt.nl/blog/post/add-a-timestamp-to-your-bash-prompt/
#   %F     Equivalent to %Y-%m-%d (the ISO 8601 date format). (C99)
#   %T     The time in 24-hour notation (%H:%M:%S). (SU)
# For the colors, see https://www.cyberciti.biz/faq/bash-shell-change-the-color-of-my-shell-prompt-under-linux-or-unix/
#   \e[0;30m    black text  \e[m
#   \e[0;34m    blue text \e[m
#   \e[0;33m    brown text  \e[m
export PS1='\e[0;30m$(__path_from_gitroot)\e[m\e[0;34m$(__git_ps1 " (%s)") \e[m\e[0;33m\D{%F %H:%m}\e[m\$ '

# <<<<<<<<<<<<<<<<<<
