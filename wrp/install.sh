#!/bin/sh
sudo ln -s $(pwd)/wrp/wrp.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable wrp

