#!/usr/bin/env bash
<<<<<<< HEAD
# sets up the web servers for the deployment of web_static

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install nginx
sudo mkdir -p /data/web_static/releases/test /data/web_static/shared
echo "Webstatic_deployment" | sudo tee /data/web_static/releases/test/index.html
sudo ln -sf /data/web_static/releases/test/ /data/web_static/current
sudo chown -hR ubuntu:ubuntu /data/
sudo sed -i '38i\\tlocation /hbnb_static/ {\n\t\talias /data/web_static/current/;\n\t}\n' /etc/nginx/sites-available/default
sudo service nginx start
=======
# Install nginx if not already installed

if ! [ -x "$(command -v nginx)" ]; then
	  sudo apt-get update
	    sudo apt-get -y install nginx
fi
sudo service nginx start
sudo mkdir -p /data/
sudo mkdir -p /data/web_static/{releases/test,shared}
sudo echo "<html>
  <head>
    </head>
      <body>
          Holberton School
	    </body>
	    </html>" | sudo tee /data/web_static/releases/test/index.html
	    sudo ln -sf /data/web_static/releases/test/ /data/web_static/current
	    sudo chown -R ubuntu:ubuntu /data/
	    sudo sed -i "39 i\ \tlocation /hbnb_static {\n\t\talias /data/web_static/current/;\n\t}\n" /etc/nginx/sites-available/default
	    sudo service nginx restart
>>>>>>> a717ed48f2df90b26c7fcaf70bc9ab94c06a2385
