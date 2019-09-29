
python3 import sys
python3 import vim
python3 import numpy as np
python3 import re
python3 import datetime
python3 sys.path.append(vim.eval('expand("<sfile>:h")'))

"""========================================================
function! Autoadd()
	
python3 << endOfPython
"""
Auto add comments for version, class, function.

Author : xinyulrsm@gmail.com


Date   : Thu 17:15:50 12/10/2015
"""
timestr = datetime.datetime.strftime(datetime.datetime.now(), '%a %H:%M:%S %m/%d/%Y')

def getLeadingSpace(line):
    """ Get spaces before letters.
    
    Parameters
    ----------
	line : current line comtent.    
    
    Return
    ------
    n: numbers of space. tab = 4 spaces 
	
	>>>  getLeadingSpace("    def f()")
         4	
	>>>  getLeadingSpace("    \tdef f()")
         8	
    """
	
    space_n = len(line) - len(line.strip(' '))
    all_n = len(line) - len(line.strip())
    return space_n + (all_n - space_n) * 4
    
b = vim.current.buffer
w = vim.current.window
(r, l) = vim.current.window.cursor

line = b[r-1]
n = getLeadingSpace(line)

def_com_str = ['\"\"\"', "\n", 
				"Parameters", "-" * 10, "\n", "\n",
				"\n",
				"Return", "-" * 6, "\n","\n",
				"Note", "-" * 4, "\n","\n", 
				"example", "-" * 7, "\n", 
				">>> " + "___funName", "\n",
				'\"\"\"']

class_com_str = ['\"\"\"', "\n", 
				"Parameters", "-" * 10, "\n", "\n",
				"Attributes", "-" * 10,  "\n", 
				"Notes", "-" * 5,  "\n", 
				"See Also","-" * 8,  "\n", 
				'\"\"\"']

ver_com_str = ["#!/usr/bin/env/ python",
				'\"\"\"', "\n", 
				"Author : xinyulrsm@gmail.com", "\n", "\n",
				"Date   : " + timestr, 
				'\"\"\"']
				
other_com_str = ['\"\"\"', "\n", 
				'\"\"\"']
if r==1:
	com_str = ver_com_str 
	rx = 0
	n =  -4
elif line.lstrip().startswith("def "):
    funName = line.lstrip().replace("def ","").replace(":","")	
    com_str = [x.replace("___funName", funName) for x in def_com_str]
    rx = r
elif line.lstrip().startswith("class "):
	com_str = class_com_str
	rx = r
else :
	com_str = other_com_str
	rx = r

for i, _str in enumerate(com_str):
	b[(rx+i):(rx+i)] = [" "*(n+4) + _str]

vim.current.window.cursor = (r+1, len(b[r]))

endOfPython
endfunction


command! Autoadd call Autoadd()
