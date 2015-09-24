Raspberry Pi 2 configuration
============================

Installation
------------

```sh
# cd <path-to-rpi2-dir>
cd ~/ros/src/rarog/rarog_config/rpi2

# 1. rosconsole
ln -s $PWD/rosconsole.config ~/ros/

# 2. upstart job
sudo cp rarog.conf /etc/init/

# 3. udev rule
sudo cp 90-ttyAMA0.rules /etc/udev/rules/

# 4. rpi2 bootloader config (optional)
sudo cp config.txt /boot/firmware/
```
