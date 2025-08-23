#!/bin/bash
# Update system
sudo apt update -y

# Install Apache2 (ya nginx jo chahiye)
sudo apt install -y nginx

# Enable + Start Apache
sudo systemctl enable nginx
sudo systemctl start nginx

# Add a test page
echo "<h1>Hello from $(hostname)</h1>" > /var/www/html/index.html
