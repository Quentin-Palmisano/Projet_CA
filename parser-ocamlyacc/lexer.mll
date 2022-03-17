{
  open Parser
}

let integer = '-'?['0'-'9']+
let spaces = [' ' '\t' '\n']
let float = '-'?(['0'-'9']*'.')?['0'-'9']+

rule token = parse
  | "+"           { ADD }
  | "-"           { SUB }
  | "*"           { MULT }
  | "/"           { DIV }
  | ";"           { SEMICOL }
  | "<"           { LOWER }
  | ">"           { GREATER }
  | "="           { EQUAL }
  | "AND"         { AND }
  | "OR"          { OR }
  | "NOT"         { NOT }
  | integer as s  { INT(int_of_string s) }
  | float as s    { FLOAT(float_of_string s) }
  | spaces        { token lexbuf }
  | eof           { EOF }
  | _  as lxm     { Printf.printf "Unexpected character: %c"  lxm; exit 0 }
  | "Print"       { PRINT }