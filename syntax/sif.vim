"syntax/sif.vim
" set hightlights

syntax keyword sifKeyword Header End Real
syntax keyword sifKeyword Simulation Constants Body Equation Solver Material functioyn 
syn match   sifComment	"!.*$" contains=sifTodo,@Spell
syn keyword sifTodo		FIXME NOTE NOTES TODO XXX contained

syn match   sifSpecial contained "\\\d\d\d\|\\."
syn region  sifString		  start=+"+  skip=+\\\\\|\\"+  end=+"+  contains=sifSpecial

syn match sifOperator	"\.\s*n\=eqv\s*\."
syn match sifOperator	"\.\s*\(and\|or\|not\)\s*\."
syn match sifOperator	"\(+\|-\|/\|\*\)"

if !exists("sif_no_number_highlight")
    "    numbers (including longs and complex)
        syn match   sifNumber	"\<0[oO]\=\o\+[Ll]\=\>"
        syn match   sifNumber	"\<0[xX]\x\+[Ll]\=\>"
        syn match   sifNumber	"\<0[bB][01]\+[Ll]\=\>"
        syn match   sifNumber	"\<\%([1-9]\d*\|0\)[Ll]\=\>"
        syn match   sifNumber	"\<\d\+[jJ]\>"
        syn match   sifNumber "\<\d\+[eE][+-]\=\d\+[jJ]\=\>"
	syn match   sifNumber  "\<\d\+\.\%([eE][+-]\=\d\+\)\=[jJ]\=\%(\W\|$\)\@=" 
	syn match   sifNumber  "\%(^\|\W\)\@<=\d*\.\d\+\%([eE][+-]\=\d\+\)\=[jJ]\=\>"
endif


if version >= 508 || !exists("did_sif_syn_inits")
    if version <= 508
        let did_sif_syn_inits = 1
	command -nargs=+ HiLink hi link <args>
    else
        command -nargs=+ HiLink hi def link <args>
    endif
    
    HiLink sifKeyword Keyword  
    HiLink sifComment Comment
    HiLink sifNumber Number 
    HiLink sifString String
    HiLink sifOperator Operator

    delcommand HiLink
endif

