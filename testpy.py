# Import the module
import os
import sys
import subprocess

# Ask the user for input
command = input('Enter argument:')	

# Set up the echo command and direct the output to a pipe
process = subprocess.Popen(['./program02', 'CMD:' , command], stdout=subprocess.PIPE)

try:
    outs, errs = process.communicate(timeout=15)
    if outs is not None:
        print(outs)
    
    if errs is not None:
        print(errs)
except subprocess.TimeoutExpired:
    process.kill()
    outs, errs = process.communicate()

    if outs is not None:
        print(outs)
    
    if errs is not None:
        print(errs)
