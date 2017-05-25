# Alias for easier clipborad pasting
alias xclip="xclip -selection c"

# Scrap all changes
alias nah="git reset --hard;git clean -df;"

# Laravel aliases
alias art="php artisan"
alias tinker="php artisan tinker"

# Audio output switch
alias speaker="sudo switch-sound speaker -r"
alias headphones="sudo switch-sound headphones -r"

alias start-alpha="sudo docker-compose --file ~/working/Floggl/alpha-web/laradock-alpha-web/docker-compose.yml  up -d nginx mariadb"
alias enter-alpha="sudo docker-compose --file ~/working/Floggl/alpha-web/laradock-alpha-web/docker-compose.yml exec workspace bash"
