### Docker and docker compose prerequisites 
sudo apt-get install curl 
sudo apt-get install gnupg 
sudo apt-get install ca-certificates 
sudo apt-get install lsb-release

### Download the docker gpg file to Ubuntu
sudo mkdir -p /etc/apt/keyrings 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
### Add Docker and docker compose support to the Ubuntu's packages list 
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-pluginsudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-pluginlinux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null 

sudo apt-get update
### Install docker and docker compose on Ubuntu 
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
### Verify the Docker and docker compose install on Ubuntu 
sudo docker run hello-world