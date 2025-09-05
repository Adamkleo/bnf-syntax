" Guard against loading twice
if exists("b:current_syntax")
  finish
endif

" Define syntax matches
syntax match bnfNonTerminal /<[^>]*>/
syntax match bnfTerminal /"[^"]*"/
syntax match bnfOperator /::=/
syntax match bnfChoice /|/

" Link to standard highlight groups
highlight link bnfNonTerminal Keyword
highlight link bnfTerminal String
highlight link bnfOperator Operator
highlight link bnfChoice Operator

" Set the syntax name
let b:current_syntax = "bnf"
