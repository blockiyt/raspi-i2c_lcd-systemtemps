DIR=temperature_i2c_led
mkdir $DIR
cd $DIR
if [ -f "i2c_lib.py" ]; then
    echo "i2c_lib.py already exists."
else
    sudo wget https://github.com/blockiyt/raspi-i2c_lcd-systemtemps/releases/latest/download/i2c_lib.py
fi
if [ -f "temp.py" ]; then
    echo "temp.py already exists."
else
    sudo wget https://github.com/blockiyt/raspi-i2c_lcd-systemtemps/releases/latest/download/temp.py
fi
if [ -f "lcddriver.py" ]; then
    echo "lcddriver.py already exists."
else
    sudo wget https://github.com/blockiyt/raspi-i2c_lcd-systemtemps/releases/latest/download/lcddriver.py
fi
sudo apt-get install python2 python-smbus git i2c-tools -y