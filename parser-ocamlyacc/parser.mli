type token =
  | INT of (int)
  | STRING of (string)
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
  | LET
  | IN
  | ASSIGN
  | EOF

val prog :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.inst
