# some more ls aliases
# general shortcuts
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias md='mkdir'
alias rd='rmdir'
alias nbrc='nvim ~/.bashrc'
alias nzrc='nvim ~/.zshrc'
alias cbrc='cat ~/.bashrc'
alias czrc='cat ~/.zshrc'
alias cf='touch'
alias ~='cd ~'
alias grep='grep --color=auto'
alias ..='cd ..'
alias cls='clear'
alias mkdir='mkdir -p'
alias p='cd ~'
alias x='exit'
alias ddc='cd ~/Documents/'
alias dd='cd ~/Downloads'
alias i='cd ..'
alias cc='code .'
alias gd='gedit'
alias saud='sudo apt update'
alias saug='sudo apt upgrade'


# git shortcuts
alias gps='git push'
alias gcl='git clone'
alias gcmt='git commit -m'
alias gs='git status'
alias gcm='git commit -m '
alias gco='git checkout '
alias glg='git log'
alias gad='git add ./'
alias gsh='git push'
alias gsw='git switch  '



alias svba='source venv/bin/active'

alias p3='python3'
alias ncv='npm create vite'
alias nrd='npm run dev'
alias nrst='npm run start'
# chrome shortcuts
alias chrome-default='google-chrome --profile-directory="Default"'
alias chrome-guest='google-chrome --profile-directory="Guest Profile"'
alias ch1='google-chrome --profile-directory="Profile 1"'
alias ch18='google-chrome --profile-directory="Profile 18"'
alias ch3='google-chrome --profile-directory="Profile 3"'
alias ch34='google-chrome --profile-directory="Profile 34"'
alias chrome-system='google-chrome --profile-directory="System Profile"'
alias goc='google-chrome'

# JS shortcuts
alias nrb='npm run build'
alias nrt='npm run test'
alias nmn='nodemon'
alias nscnin='npx shadcn-ui@latest init'

alias pnscc='pnpm dlx shadcn-ui@latest add'
alias pncna='pnpm create next-app'
alias pncv='pnpm create vite'
alias pnpi='pnpm install'
alias pnin='pnpm init'
alias pnra='pnpm run android'
alias pnrd='pnpm run dev'
alias pnrdv='pnpm run develop'
alias pnrb='pnpm run build'
alias pnrtd='pnpm run tauri dev'
alias pnscnin='pnpm dlx shadcn-ui@latest init'
alias pnscc='pnpm dlx shadcn-ui@latest add'
alias ntl='nautilus .'
alias bcv='bun create vite'
alias brd='bun run dev'

alias ny='netlify '
alias vcl='vercel '

# Docker general
alias dr='docker'
alias dps='docker ps'
alias dpsa='docker ps -a'
alias di='docker images'
alias db='docker build .'
alias dbt='docker build -t' # usage: dbt imagename .
alias drm='docker rm'
alias drmi='docker rmi'
alias dst='docker start'
alias dsp='docker stop'
alias drs='docker restart'
alias dex='docker exec -it' # usage: dex container_name bash
alias dsh='docker exec -it $(docker ps -q | head -n 1) bash' # quick shell into first running container

# Docker containers and images cleanup
alias dcl='docker container ls'
alias dcla='docker container ls -a'
alias dcls='docker container stop $(docker container ls -q)'
alias dclr='docker container rm $(docker container ls -aq)'
alias dprune='docker system prune -af --volumes'
alias diprune='docker image prune -af'

# Docker Compose
alias dc='docker compose'
alias dcu='docker compose up'
alias dcub='docker compose up --build'
alias dcd='docker compose down'
alias dcr='docker compose restart'
alias dclg='docker compose logs'
alias dclgf='docker compose logs -f'
alias dcex='docker compose exec' # usage: dcex service_name bash

# Dockerfile testing shortcut
alias dbuild='docker build -t testimage . && docker run -it --rm testimage'
