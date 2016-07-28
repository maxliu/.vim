
python import sys
python import vim
python import numpy as np
python import re
python import datetime
python sys.path.append(vim.eval('expand("<sfile>:h")'))

"""========================================================
function! Autowin()
	
python << endOfPython
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
