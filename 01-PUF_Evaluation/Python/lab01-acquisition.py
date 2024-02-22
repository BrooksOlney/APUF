# SOLUTION
# Lab 01 - Aquisition
import serial
import numpy as np
from time import sleep

def main():
    
    # COM15 == fpga1, COM17 == fpga2
    # connect to COM port, set baudrate
    fpga1 = "COM15"
    fpga2 = "COM17"
    
    port = "COM17"
    boudrate = 115200
    # ser = serial.Serial(port, boudrate)
    ser1 = serial.Serial(fpga1,boudrate)
    ser2 = serial.Serial(fpga2,boudrate)
    
    # ser.open()

    # load data from npz file, loads as directory with one item 'challenge'
    in_filename = "Labs-Old/01-PUF_Evaluation/challenges10k.npz"
    # challenges = np.random.choice(list(range(2**16)),size=10000).astype(np.uint16)
    # np.savez_compressed(in_filename,challenges)
    
    data = np.load(in_filename)
    challenges = data['arr_0'].astype(np.uint16)
    resp = np.load("resp_10k_fpga1.npz")['response']
    # get and collect all responses
    # challenges = [int(c,2) for c in challenges]
    # responses = [int(r,2) for r in resp]

    r1_list = []
    r2_list = []
    for c in challenges:
        # r = get_resp(ser, hex(c)[2:].zfill(4))
        r1 = get_resp(ser1, hex(c)[2:].zfill(4))
        r2 = get_resp(ser2, hex(c)[2:].zfill(4))
        
        # print(f'Challenge = {c}\nResponse = {r}')
        # r_list.append(r)
        r1_list.append(r1)
        r2_list.append(r2)
    
    # output list into npz file, save as directory with one item 'response'
    # out_filename = "resp_10k_fpga2.npz"
    # r_array = np.asarray(r_list)
    # np.savez(out_filename, response=r_array)

    # print('Output File =', out_filename)
    print("DONE")

    quit()
    

# Function: get_resp()
#   Input: sends 1 input hex string 'in_hex' to the serial connection 'ser'.
#   Output: returns respectve hex string response 'r'.
def get_resp(ser, in_hex):
    # convert hex string to bytearray
    in_bytes = bytearray.fromhex(in_hex)

    # send bytes to FPGA
    ser.write(in_bytes)
    # sleep(.01)

    # get response
    while not ser.in_waiting:
        continue
    
    r_bytes = ser.read_all()

    # convert bytearray to hex 
    r = int.from_bytes(r_bytes,'big')
    return r


# executes main() function 
if __name__ == '__main__':
    main()
