" ~/.config/nvim/after/syntax/ebnf.vim

" Reset highlights
hi clear ebnfRuleTarget
hi clear ebnfIdentifier
hi clear ebnfTerminal

" 1. LHS Rule Target (The 'Definition')
" Matches a word at the start of a line only if followed by an '='
syn match ebnfRuleTarget /^\s*[a-zA-Z_]\w*\ze\s*=/

" 2. The Equals Sign
syn match ebnfAssignment /=/

" 3. Terminals: ALL_CAPS (Lexical Tokens)
" Matches words with ONLY uppercase letters (and optional digits/underscores)
syn match ebnfTerminal /\<[A-Z][A-Z0-9_]*\>/

" 4. Non-Terminals: RHS Identifiers (The 'Usage')
" Matches lowercase or CamelCase words not at the start of the line
" The lookbehind ensures it catches words after '(', '|', or spaces
syn match ebnfIdentifier /\([(=|[:space:]]\)\@<=[a-z_][a-zA-Z0-9_]*/
syn match ebnfIdentifier /\([(=|[:space:]]\)\@<=[A-Z][A-Z0-9_]*[a-z][a-zA-Z0-9_]*/

" 5. Operators & Punctuation
syn match ebnfOperator /[|*?+]/
syn match ebnfPunctuation /[()\[\]{}.,;:]/

" 6. Strings & Comments
syn region ebnfString start=/"/ end=/"/
syn region ebnfString start=/'/ end=/'/
syn match ebnfComment /#.*$/
syn region ebnfComment start="(\*" end="\*)"

" --- HIGHLIGHTING LINKS ---
hi! link ebnfRuleTarget    Function    " Rule definition
hi! link ebnfAssignment    Statement   " The = sign
hi! link ebnfTerminal      Constant    " ALL_CAPS (New!)
hi! link ebnfIdentifier    Type        " non_terminals
hi! link ebnfOperator      Special     " | * ? +
hi! link ebnfPunctuation   Delimiter   " ( ) { } , ; :
hi! link ebnfString        String      " "terminals"
hi! link ebnfComment       Comment     " # comments

let b:current_syntax = "ebnf"
