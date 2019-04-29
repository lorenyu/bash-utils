
Install [bash-completion](https://davidalger.com/posts/bash-completion-on-os-x-with-brew/) with brew
```
brew install bash-completion
```
then add the following line to .bashrc
```
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
```

Git Completion script downloaded from Git source code at:
https://github.com/git/git/blob/master/contrib/completion/git-completion.bash

Instructions:
source git-completion.bash
