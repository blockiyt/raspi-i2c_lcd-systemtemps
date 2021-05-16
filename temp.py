import lcddriver
import time
import commands

display = lcddriver.lcd()

def get_cpu_tempC():
        tempFile = open("/sys/class/thermal/thermal_zone0/temp")
        cpu_temp = tempFile.read()
        tempFile.close()
        return float(cpu_temp)/1000

def get_gpu_tempC():
        gpu_temp = commands.getoutput( '/opt/vc/bin/vcgencmd measure_temp' ).replace( 'temp=', '' ).replace( '\'C', '' )
        return float(gpu_temp)

while True:
        try:
                cpu_tempC = get_cpu_tempC()
                gpu_tempC = get_gpu_tempC()

                cpuT = "CPU temp: %.2f" % cpu_tempC
                gpuT = "GPU temp: %.2f" % gpu_tempC

                display.display_string(cpuT + "C", 1)
                display.display_string(gpuT + "C", 2)
                time.sleep(5)
        except KeyboardInterrupt:
                print("KeyboardInterrupt - Cleaning up!")
                display.clear()
                exit()