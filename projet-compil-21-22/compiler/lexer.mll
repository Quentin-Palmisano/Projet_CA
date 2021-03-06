{
  open Parser
}

let integer = ['0'-'9']+
let spaces = [' ' '\t' '\n']
let string = ['a'-'z''A'-'Z''0'-'9']+
let comments = '/''*'['a'-'z''A'-'Z''0'-'9'' ''\t''\n''('')''?'':'';'',''!''.''$']*'*''/'

rule token = parse
  | comments       { token lexbuf }
  | "("           { LP }
  | ")"           { RP }
  | "{"           { LA }
  | "}"           { RA }
  | "["           { LC }
  | "]"           { RC }
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
  | ","           { COMMA }
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
  | "and"         { AND }
  | "where"       { WHERE }
  | "length"      { LENGTH }
  | "cons"        { CONS }
  | "hd"          { HD }
  | "tl"          { TL }
  | "empty"       { EMPTY }
  | "nil"         { NIL }
  | string as s   { STRING(s) }
  | spaces        { token lexbuf }
  | eof           { EOF }
  | _  as lxm     { Printf.printf "Unexpected character: %c"  lxm; exit 0 }