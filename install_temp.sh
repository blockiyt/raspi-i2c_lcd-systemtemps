DIR=temperature_i2c_led
mkdir $DIR
cd $DIR
if [ -f "i2c_lib.py" ]; then
    echo "i2c_lib.py already exists."
else
    sudo wget https://s1/i2c_lib.py
fi
if [ -f "temp.py" ]; then
    echo "temp.py already exists."
else
    sudo wget https://s1/temp.py
fi
if [ -f "lcddriver.py" ]; then
    echo "lcddriver.py already exists."
else
    sudo wget https://s1/lcddriver.py
fi
sudo apt-get install python-smbus git i2c-tools -y