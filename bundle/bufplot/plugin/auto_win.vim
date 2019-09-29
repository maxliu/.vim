
python3 import sys
python3 import vim
python3 import numpy as np
python3 import re
python3 import datetime
python3 sys.path.append(vim.eval('expand("<sfile>:h")'))

"""========================================================
function! Autowin()
	
python3 << endOfPython
"""
Auto add comments for version, class, function.

Author : xinyulrsm@gmail.com


Date   : Thu 17:15:50 12/10/2015
"""
timestr = datetime.datetime.strftime(datetime.datetime.now(), '%a %H:%M:%S %m/%d/%Y')

    
b = vim.current.buffer
w = vim.current.window
(r, l) = vim.current.window.cursor


endOfPython
endfunction


command! Autowin call Autowin()
