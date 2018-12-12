# Prints out the path starting from the git root directory
__path_from_gitroot()
{
    CWD=$(pwd)
    # $(git rev-parse --show-toplevel) gets the absolute path to the git root directory
    # and dirname gets the path of its parent directory. The 2> is to silence errors
    # in case we are not in a git repo
    GIT_ROOT_PARENT=$(dirname $(git rev-parse --show-toplevel 2> /dev/null) 2> /dev/null)
    # If we are not in a git repo, then default to echo'ing the current directory's name
    RESULT=$(basename $CWD)
    # If GIT_ROOT_PARENT isn't empty, then set the result to the substring of the current
    # working directory that is after the parent of the git root. In other words, include
    # the git root itself and any subdirectories. The +1 is to exclude the leading /
    [[ ! -z $GIT_ROOT_PARENT ]] && RESULT=${CWD:${#GIT_ROOT_PARENT}+1}
    echo $RESULT
}
