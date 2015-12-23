if [[ $1 == "notebook" ]]; then
    sudo jupyter notebook
else
    sudo scapy -c .scapy_startup.py
fi
