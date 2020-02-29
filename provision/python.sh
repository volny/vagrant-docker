sudo apt-get install python3-dev python3-venv python3-pip -q -y
python3 -m pip install --upgrade pip

echo "alias python=\"python3\"" >> .bashrc
echo "alias pip=\"python3 -m pip\"" >> .bashrc

# add pip stuff to path
export PATH="/home/vagrant/.local/bin:$PATH"
