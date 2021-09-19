echo "Upgrading system and instaling dependencies..."

sudo apt-get update -y
sudo apt-get install apt-transport-https
sudo apt-get upgrade -y
sudo apt-get install virtualbox virtualbox-ext-pack curl wget ca-certificates
sudo apt-get install docker.io -y

echo "Installing kubectl..."
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl

echo "Installing minikube..."
echo "Source: kubernetes.io/docs/tasks/tools/"
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
sudo dpkg -i minikube_latest_amd64.deb
