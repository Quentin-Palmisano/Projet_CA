{
  open Parser
}

let integer = ['0'-'9']+
let spaces = [' ' '\t' '\n']
let string = ['a'-'z''A'-'Z''0'-'9']+

rule token = parse
  | comments      { token lexbuf }
  | "("           { LP }
  | ")"           { RP }
  | "+"           { ADD }
  | "-"           { SUB }
  | "*"           { MULT }
  | "/"           { DIV }
  | "not"         { NOT }
  | "=="          { EQUAL }
  | "!="          { NOTEQUAL }
  | "<"           { LOWER }
  | ">"           { GREATER }
  | "<="          { LOWEREQUAL }
  | ">="          { GREATEREQUAL }
  | "true"        { TRUE }
  | "false"       { FALSE }
  | integer as s  { INT(int_of_string s) }
  | ";"           { SEMICOL }
  | "begin"       { BEGIN }
  | "end"         { END }
  | "if"          { IF }
  | "then"        { THEN }
  | "else"        { ELSE }
  | "let"         { LET }
  | "in"          { IN }
  | "="           { ASSIGN }
  | "while"       { WHILE }
  | "do"          { DO }
  | "done"        { DONE }
  | "ref"         { REF }
  | "!"           { EXCLAM }
  | ":="          { AFFECT }
  | "print"       { PRINT }
  | string as s   { STRING(s) }
  | spaces        { token lexbuf }
  | eof           { EOF }
  | _  as lxm     { Printf.printf "Unexpected character: %c"  lxm; exit 0 }