{
  open Parser
}

let integer = '-'?['0'-'9']+
let spaces = [' ' '\t' '\n']
let string = ['a'-'z''A'-'Z''0'-'9']+

rule token = parse
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
  | "true"        { INT(1) }
  | "false"       { INT(0) }
  | integer as s  { INT(int_of_string s) }
  | ";"           { SEMICOL }
  | "begin"       { BEGIN }
  | "end"         { END }
  | "if"          { IF }
  | "then"        { THEN }
  | "else"        { ELSE }
  | "ref"         { REF }
  | "!"           { EXCLAM }
  | ":="          { AFFECT }
  | "let"         { LET }
  | "in"          { IN }
  | string as s   { STRING(s) }
  | "="           { ASSIGN }

  | spaces        { token lexbuf }
  | eof           { EOF }
  | _  as lxm     { Printf.printf "Unexpected character: %c"  lxm; exit 0 }
  | "print"       { PRINT }