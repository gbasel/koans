COLOR_RESET=$(tput sgr0)
COLOR_RED="${COLOR_RESET}$(tput setaf 1)"
COLOR_GREEN="${COLOR_RESET}$(tput setaf 2)"
COLOR_BLUE="${COLOR_RESET}$(tput setaf 4)"

fail() {
    echo -e "${COLOR_RED}${1}${COLOR_RESET}"
}

pass() {
    echo -e "${COLOR_GREEN}${1}${COLOR_RESET}"
}

note() {
    echo -e "${COLOR_BLUE}${1}${COLOR_RESET}"
}
