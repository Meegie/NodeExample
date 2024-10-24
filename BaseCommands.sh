# Up to date
apt update -y
apt upgrade -y

# Required
apt install curl wget sudo git -y

# NVM
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm install 20

mkdir app
cd app
git clone https://github.com/Meegie/NodeExample .
npm install