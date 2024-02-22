# SOLUTION
# Lab 01 - Analysis
import numpy as np
import matplotlib.pyplot as plt

# CONSTANTS
BITS = 16

def main():
    # load data from npz file, loads as directory with one item 'response'
    in_filename = "../Responses/resp_5k_fpga1.npz.npz"
    data = np.load(in_filename)
    challenges = data['response']

    # get and collect all responses
    r_list = []
    for c in challenges:
        r = get_resp(ser, c)
        print(f'Challenge = {c}\nResponse = {r}')
        r_list.append(r)
    
    # output list into npz file
    out_filename = "../Responses/resp_5k.npz"
    r_array = np.asarray(r_list)
    np.savez(out_filename)

    print('Output File =', out_filename)
    print("DONE")
    quit()
    

# Function: plot_hist()
#   Input: sends 1 input hex string 'in_hex' to the serial connection 'ser'.
#   Output: returns respectve hex string response 'r'.
def plot_hist(data: list = [], title: str = "Plot Title", xlabel: str = "x-axis label", ylabel: str = "y-axis label") -> None:
    fig = plt.figure(figsize=(width, height))


    plt.hist(data, bins=range(xmin, xmax), density=True) # Probability Density Function (pdf): density=True; Freq: density=False
    plt.set_title(title)
    plt.xlabel(xlabel, size='large')
    plt.ylabel(ylabel, size='large')

    plt.yticks(np.arange(0, 1+ytick, ytick))
    plt.grid(axis='y')

    # Set pass/fail border line
    plt.axhline(y=ALPHA, color='r', linestyle='-', label=chr(945)+'='+str(ALPHA))
    plt.legend()

    # Set annotations
    for , t in zip(annotations, testID):
        plt.annotate(('PASS' if p>=ALPHA else 'FAIL'), xy=(t,(p+0.005 if p>=ALPHA else ALPHA+0.005)), ha='center', va='bottom', size='small')

    # Save plot
    plt.savefig(OUT_FILE_PATH+"Fig_"+f[:-4]+".png", bbox_inches='tight')
    plt.clf()


# executes main() function 
if __name__ == '__main__':
    main()