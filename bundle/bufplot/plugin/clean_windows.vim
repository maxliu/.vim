"""

"""
function! Clean_windows()
python3 <<PYEND
import vim
print ("going to delete message window")
#for b in vim.buffers:
#   print b.number
#   print b.name

#   print
for w in vim.windows:
  if w.buffer.name == "":
    vim.current.window = w
    vim.command("q")
PYEND
endfunction
command! CleanWindows call Clean_windows()
