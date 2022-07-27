sudo apt install -y python3-pip nginx python3-opencv
cd ~/Plant-Disease-Detection-Keras 
# Copy the configuration file to the nginx enabled sites folder
sudo cp -R fastapi_setup /etc/nginx/sites-enabled/
sudo service nginx restart
cd ~/Plant-Disease-Detection
# Install FastAPI application requirements
pip3 install -r requirements.txt
python3 download.py
# Kill any service running on port 80
sudo kill -9 $(sudo lsof -t -i:80)
sudo service nginx restart
# Run the application with nohup so the application runs as a background process
nohup python3 -m uvicorn app:app --reload --host 0.0.0.0
