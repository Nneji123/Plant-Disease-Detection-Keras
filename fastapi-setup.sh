sudo apt-get update
### Docker and docker compose prerequisites 
sudo apt-get install -y curl 
sudo apt-get install -y gnupg 
sudo apt-get install -y ca-certificates 
sudo apt-get install -y lsb-release

### Download the docker gpg file to Ubuntu
sudo mkdir -p /etc/apt/keyrings 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
### Add Docker and docker compose support to the Ubuntu's packages list 
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-pluginsudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-pluginlinux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null 

sudo apt-get update
### Install docker and docker compose on Ubuntu 
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
### Verify the Docker and docker compose install on Ubuntu 

sudo apt install -y python3-pip nginx
cd ~/Plant-Disease-Detection-Keras 
# Copy the configuration file to the nginx enabled sites folder
sudo cp -R fastapi_setup /etc/nginx/sites-enabled/
sudo service nginx restart

pip3 install gdown
python3 download.py
# Kill any service running on port 80
sudo kill -9 $(sudo lsof -t -i:80)
sudo service nginx restart
# Run the application with nohup so the application runs as a background process
nohup sudo docker compose up -d --build
