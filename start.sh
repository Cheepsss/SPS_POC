docker pull vulhub/jenkins:2.441
sudo docker run -d -p 8080:8080 -p 50000:50000 --name jenkins-vuln vulhub/jenkins:2.441
