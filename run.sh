if [[ $1 == "notebook" ]]; then
    sudo jupyter notebook --allow-root
else
    sudo scapy -c .scapy_startup.py
fi
