#!/bin/bash
# Update and install requirements
sudo apt-get update
sudo apt install -y uvicorn
sudo apt install -y python3-pip nginx python3-opencv
# Copy the configuration file to the nginx enabled sites folder
sudo cp -R fastapi_setup /etc/nginx/sites-enabled/
sudo service nginx restart
cd ~/Plant-Disease-Detection-Keras
# Install FastAPI application requirements
pip3 install -r aws.txt
pip3 install tensorflow --no-cache-dir
python3 download.py
# Kill any service running on port 80
sudo kill -9 $(sudo lsof -t -i:80)
sudo service nginx restart
# Run the application with nohup so the application runs as a background process
sudo fallocate -l 3G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo free -h
cat /proc/sys/vm/swappiness
nohup uvicorn app:app --reload --host 0.0.0.0
