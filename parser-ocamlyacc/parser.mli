type token =
  | INT of (int)
  | ADD
  | SUB
  | MULT
  | DIV
  | NOT
  | EQUAL
  | NOTEQUAL
  | LOWER
  | GREATER
  | LOWEREQUAL
  | GREATEREQUAL
  | PRINT
  | SEMICOL
  | BEGIN
  | END
  | IF
  | THEN
  | ELSE
  | EOF

val prog :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.inst
