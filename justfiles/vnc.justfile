# Configure Xfce desktop
# https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-vnc-on-ubuntu-20-04

home-dir := '/home/pi'

server-all: server-dependencies server-config server-vnc-service
host-all: host-tunnel

default:
  just --list

server-dependencies:
    #  Step 1 - Server: Installing Desktop Environment and VNC Server
    sudo apt update
    sudo apt install -y xfce4 xfce4-goodies
    sudo apt install -y tightvncserver

# Step 2 - Server: Configuring the VNC Server
server-config:
    vncpasswd
    cat > ~/.vnc/xstartup <<EOF
#!/bin/bash
xrdb $HOME/.Xresources
startxfce4 &
EOF
    
    chmod +x ~/.vnc/xstartup

server-vnc-service:
    cat > /etc/systemd/system/vncserver@.service <<EOF
[Unit]
Description=Start TightVNC server at startup
After=syslog.target network.target

[Service]
Type=forking
User=pi
WorkingDirectory=/home/pi

PIDFile=/home/pi/.vnc/%H:%i.pid
ExecStartPre=-/usr/bin/vncserver -kill :%i > /dev/null 2>&1
ExecStart=/usr/bin/vncserver -depth 24 -geometry 1920x1080 -localhost :%i
ExecStop=/usr/bin/vncserver -kill :%i

[Install]
WantedBy=multi-user.target
EOF

    sudo systemctl daemon-reload
    sudo systemctl enable vncserver@1.service
    sudo systemctl start vncserver@1
    sudo systemctl status vncserver@1

host-tunnel:
    ssh -L 59000:localhost:5901 -C -N -l pi 192.168.88.2
    # Reminder: this is the host $USER password
    # Open VNC Viewer of choice
    # Reminder: this prompts for the server password (change with vncpasswd)
