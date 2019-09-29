
python3 import sys
python3 import os
python3 import vim
python3 import re
python3 import datetime
python3 sys.path.append(vim.eval('expand("<sfile>:h")'))

"""========================================================
function! MyNerdTreeCtrl()
	
python3 << endOfPython

"""

Author : xinyulrsm@gmail.com


Date   : Thu 23:04:36 12/17/2015
"""
    
b = vim.current.buffer
w = vim.current.window
(r, l) = vim.current.window.cursor

for w in vim.current.tabpage.windows:
        bf_name = os.path.basename(w.buffer.name)
        #print bf_name
        if bf_name.startswith("NERD_tree"):
            vim.command("NERDTreeToggle")
            print ("run toggle")
            break
else:              
        #vim.command("NERDTree")
    vim.command("NERDTreeToggle")
    #vim.command("NERDTreeMirror")
    #print "run nerdtree"


        

endOfPython
endfunction


command!  MyNerdTreeCtrl call MyNerdTreeCtrl ()
