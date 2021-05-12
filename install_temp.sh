DIR=temperature_i2c_led
mkdir $DIR
cd $DIR
if [ -f "i2c_lib.py" ]; then
    echo "i2c_lib.py already exists."
else
    sudo wget https://github.com/blockiyt/raspi-i2c_lcd-systemtemps/releases/download/v1.0/i2c_lib.py
fi
if [ -f "temp.py" ]; then
    echo "temp.py already exists."
else
    sudo wget https://github.com/blockiyt/raspi-i2c_lcd-systemtemps/releases/download/v1.0/temp.py
fi
if [ -f "lcddriver.py" ]; then
    echo "lcddriver.py already exists."
else
    sudo wget https://github.com/blockiyt/raspi-i2c_lcd-systemtemps/releases/download/v1.0/lcddriver.py
fi
sudo apt-get install python-smbus git i2c-tools -y