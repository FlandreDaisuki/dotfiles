prompt_trimmer() {
    local len="${#PWD}"

    if [[ "$len" -lt 25 ]]; then
      unset PROMPT_DIRTRIM
    elif [[ "$len" -lt 40 ]]; then
      PROMPT_DIRTRIM=4
    else
      PROMPT_DIRTRIM=3
    fi
}

git_prompt() {
    foreLightGreen="\[\033[1;32m\]"
    foreRed="\[\033[1;31m\]"
    foreBlue="\[\033[1;34m\]"
    colorOff="\[\033[0m\]"
    user="${foreLightGreen}\u${colorOff}"
    cwd="${foreBlue}\w${colorOff}"
    echo "${user} ${cwd}${foreRed}\$(__git_ps1) ${colorOff}\$ "
}
PS1=$(git_prompt)

cd() {
    builtin cd "$@" && prompt_trimmer
}

prompt_trimmer