sudo apt-get install software-properties-common build-essential libssl-dev libffi-dev -q -y
sudo apt install python3.7 python3.7-dev python3.7-venv python3-pip -q -y
python3.7 -m pip install --upgrade pip

alias python=python3.7
alias pip='python3.7 -m pip'

# add pip stuff to path
export PATH="/home/vagrant/.local/bin:$PATH"
