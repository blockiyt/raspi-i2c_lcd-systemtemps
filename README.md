# I2C Display temperature viewer
This programm runs on python and displays the current system temps on the i2c screen.

## Installation
It requires [Python](https://www.python.org/) v2 to run.

Get the installer from the [releases](https://github.com/blockiyt/raspi-i2c_lcd-systemtemps/releases) and run it, it installs all the things you'll need:

```sh
wget https://github.com/blockiyt/raspi-i2c_lcd-systemtemps/releases/download/v1.0/install_temp.sh
chmod +x installer_temp.sh
./installer_temp.sh
```

Then after you've done it, just run and have fun!:

```sh
python temp.py
or
python2 temp.py
```

If you want to start it after reboot, just do this:
```sh
crontab -e
```
select your editor, and type:
```sh
@reboot python /filder/where/it/is/temp.py
or
@reboot python2 /filder/where/it/is/temp.py
```
Now, just save!


## License
This code is licensed under the MIT-License:

Copyright 2021 blockiyt

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Free Software, Hell Yeah!
