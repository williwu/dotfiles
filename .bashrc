# startup welcome screen
WELCOME_MSG=(
"(づ￣ ³￣)づ  Good morning ~\n"
"(ﾉ◕ヮ◕)ﾉ*:･ﾟ✧  Good afternoon!\n"
"(づ｡◕‿‿◕｡)づ  Good evening!\n"
)

# default set currMsg to evening
# from 4 - 12 it is considered morning
# from 12 - 20 it is considered afternoon
# from 20 - next day 4 is considered evening

currTime=$(date +"%H")
currMsg=2
if [ "$currTime" -gt 12 ]; then
    if [ "$currTime" -lt 20 ]; then
        currMsg=1
    fi
fi
if [ "$currTime" -lt 12 ]; then
    if [ "$currTime" -gt 4 ]; then
        currMsg=0
    fi
fi
if [ "$currTime" -eq 12 ]; then
    currMsg=1
fi
if [ "$currTime" -eq 4 ]; then
    currMsg=0
fi

printf "${WELCOME_MSG[$currMsg]}"

# alias
alias virenv='. ~/Tools/virtualenv/bin/activate'
alias schedule='open ~/Documents/School/HSBellSchedule.pdf'
alias math='open ~/Documents/School/Calculus.pdf'
alias vi='mvim -v'
alias vim='mvim -v'
alias c='clear'
alias la='ls -a'
alias ll='ls -l'
alias search='ddgr'
alias suvim='sudo mvim -v'
alias autoEmail='~/Developer/Scripts/autoEmail.sh'
alias rm='rm -i'

# funny error msgs OwO
INSULTS=(
" / Hahaha, n00b!                            \ \n"
" / plz uninstall                            \ \n"
" / u suk …                                  \ \n"
" / Incompetence is also competence          \ \n"
" / Y u no speak computer???                 \ \n"
" / error code: 1D10T                        \ \n"
" / Wut r u doing to me senpai?              \ \n"
" / fAke cOdIng mONkEy spOttED iN wILd       \ \n"
" / This is not Windows Mr.fanboy            \ \n"
" / Fake it till you make it!                \ \n"
" / Pro tip: type a valid command!           \ \n"
" / Wow! That was impressively wrong!        \ \n"
" / Absolutely pathetic …                    \ \n"
" / An easy fix will be sudo rm -rf /        \ \n"
)

command_not_found_handle () {
    printf "  __________________________________________\n"
    printf "${INSULTS[$((RANDOM % 14))]}"
    printf "|                                            |\n"
    printf "| （╯°□°）╯︵( .o.) Command not found        |\n"
    printf "|                                            |\n"
    printf " \_______ __________________________________/\n"
    printf "         v\n"
    printf "        ╭─╮\n"
    printf "        ⌾ ⌾\n"
    printf "        │▕│\n"
    printf "        ╰─╯\n"
    return 127
}

