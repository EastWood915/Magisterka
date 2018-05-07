import serial
import csv


# Read data from serial port

rs = serial.Serial('COM6', timeout = 1000)
results_raw = []

while(True):
    line = rs.readline()
    if "###EOT###" in line:
        break
    else:
        results_raw.append(line.strip())
        print line

# Divide data into tests and series

for line in results_raw:
    if "***" in line:
        csvfile = open(line.replace("***", '') + '.csv', 'wb')
        writer = csv.writer(csvfile)
    elif "###EOF###" in line:
        csvfile.close()
    elif ">>>" in line:
        seria = []
        seria.append(line.replace(">>>", ""))
    elif "###EOS###" in line:
        writer.writerow(seria)
    else:
        seria.append(line)
