type token =
  | INT of (int)
  | STRING of (string)
  | LP
  | RP
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
  | TRUE
  | FALSE
  | PRINT
  | SEMICOL
  | BEGIN
  | END
  | IF
  | THEN
  | ELSE
  | WHILE
  | DO
  | DONE
  | LET
  | IN
  | ASSIGN
  | EXCLAM
  | AFFECT
  | REF
  | AND
  | WHERE
  | LA
  | RA
  | LC
  | RC
  | COMMA
  | EOF

val prog :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.inst
