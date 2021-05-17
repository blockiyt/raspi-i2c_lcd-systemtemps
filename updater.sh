echo "Updating..."
sudo rm -rf temperature_i2c_led/ && sudo rm -rf install_temp.sh && sudo wget https://github.com/blockiyt/raspi-i2c_lcd-systemtemps/releases/latest/download/install_temp.sh && sudo ./install_temp.sh
echo "Done!"