# Usage:
#   ./run.sh [notebook]
#
# With `notebook`, it will launch a Jupyter session as sudo.
# Otherwise it will run `scapy`.

# Add pyenv to the shell
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Run scapy
if [[ $1 == "notebook" ]]; then
    sudo -E $(echo $(which jupyter)) notebook --allow-root
else
    sudo -E $(echo $(which scapy)) -c .scapy_startup.py
fi
