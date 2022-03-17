type token =
  | ADD
  | EOF
  | PRINT
  | SEMICOL
  | SUB
  | MULT
  | DIV
  | INT of (int)

val prog :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.inst
