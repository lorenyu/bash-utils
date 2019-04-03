# Add these lines to your .bashrc (or create one if you don't have one)
# >>>>>>>>>>>>>>>>>>

# script that allows you to see repository status in your prompt.
# downloaded from https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
[ -f /Users/loren/Projects/bash-utils/git-prompt.sh ] && source /Users/loren/Projects/bash-utils/git-prompt.sh

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash

# git completions
# downloaded from https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
[ -f /Users/loren/Projects/bash-utils/git-completion.bash ] && source /Users/loren/Projects/bash-utils/git-completion.bash

[ -f /Users/loren/Projects/bash-utils/git-working-directory.sh ] && source /Users/loren/Projects/bash-utils/git-working-directory.sh

# ssh completions
[ -f /Users/loren/Projects/bash-utils/ssh-completion.sh ] && source /Users/loren/Projects/bash-utils/ssh-completion.sh

# Hook up direnv to the shell (see https://direnv.net/)
eval "$(direnv hook bash)"

# <<<<<<<<<<<<<<<<<<
