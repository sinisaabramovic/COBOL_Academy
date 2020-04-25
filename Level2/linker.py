#from ctypes import *
#so_file = "PROGRAM03.dylib"
#
#my_functions = CDLL(so_file)
#
#print(type(my_functions)) 

# HELP
# https://open-cobol.sourceforge.io/doc/gnucobol.html#Static-C-to-COBOL
# https://pgi-jcns.fz-juelich.de/portal/pages/using-c-from-python.html

import os
import sys
from ctypes import *
from ctypes import cdll, byref, create_string_buffer


# NOTE: fn_name is copied from the output of nm (see INSTRUCTIONS.md)
if sys.platform == "darwin":
    lib_ext = "dylib"
    fn_name = "GETSUMX"
else:
    lib_ext = "so"
    fn_name = "GETSUMX"



myLib = cdll.LoadLibrary(fn_name + "." + lib_ext)
#print("Definition of the library: ")
#print(vars(myLib))
#print("EOF Definition")

#print("Test function Call")
#test_result = myLib.GETSUMX.argtypes
print(myLib.GETSUMX)
#print("EOF Test Function Call")