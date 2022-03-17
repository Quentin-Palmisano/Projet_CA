# 1 "lexer.mll"
 
  open Parser

# 6 "lexer.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base =
   "\000\000\236\255\000\000\237\255\238\255\001\000\002\000\241\255\
    \015\000\000\000\001\000\012\000\013\000\014\000\015\000\002\000\
    \252\255\253\255\029\000\255\255\001\000\251\255\250\255\249\255\
    \246\255\245\255\001\000\003\000\244\255\000\000\004\000\004\000\
    \243\255\003\000\002\000\010\000\240\255\000\000\239\255\004\000\
    \011\000\006\000\235\255";
  Lexing.lex_backtrk =
   "\255\255\255\255\019\000\255\255\255\255\019\000\019\000\255\255\
    \013\000\019\000\019\000\008\000\007\000\019\000\019\000\019\000\
    \255\255\255\255\001\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255";
  Lexing.lex_default =
   "\001\000\000\000\255\255\000\000\000\000\255\255\255\255\000\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\000\000\255\255\000\000\255\255\000\000\000\000\000\000\
    \000\000\000\000\255\255\255\255\000\000\255\255\255\255\255\255\
    \000\000\255\255\255\255\255\255\000\000\255\255\000\000\255\255\
    \255\255\255\255\000\000";
  Lexing.lex_trans =
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\004\000\004\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \004\000\013\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\017\000\019\000\000\000\018\000\000\000\016\000\
    \008\000\008\000\008\000\008\000\008\000\008\000\008\000\008\000\
    \008\000\008\000\000\000\007\000\012\000\014\000\011\000\008\000\
    \008\000\008\000\008\000\008\000\008\000\008\000\008\000\008\000\
    \008\000\025\000\024\000\023\000\022\000\008\000\008\000\008\000\
    \008\000\008\000\008\000\008\000\008\000\008\000\008\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\029\000\006\000\000\000\038\000\005\000\009\000\033\000\
    \028\000\032\000\034\000\035\000\030\000\040\000\015\000\037\000\
    \002\000\020\000\039\000\026\000\010\000\021\000\027\000\031\000\
    \036\000\041\000\042\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000";
  Lexing.lex_check =
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\000\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\000\000\000\000\255\255\000\000\255\255\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\255\255\000\000\000\000\000\000\000\000\008\000\
    \008\000\008\000\008\000\008\000\008\000\008\000\008\000\008\000\
    \008\000\011\000\012\000\013\000\014\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\009\000\000\000\255\255\037\000\000\000\000\000\006\000\
    \027\000\031\000\033\000\034\000\029\000\039\000\000\000\005\000\
    \000\000\015\000\002\000\010\000\000\000\020\000\026\000\030\000\
    \035\000\040\000\041\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255";
  Lexing.lex_base_code =
   "";
  Lexing.lex_backtrk_code =
   "";
  Lexing.lex_default_code =
   "";
  Lexing.lex_trans_code =
   "";
  Lexing.lex_check_code =
   "";
  Lexing.lex_code =
   "";
}

let rec token lexbuf =
   __ocaml_lex_token_rec lexbuf 0
and __ocaml_lex_token_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 9 "lexer.mll"
                  ( ADD )
# 124 "lexer.ml"

  | 1 ->
# 10 "lexer.mll"
                  ( SUB )
# 129 "lexer.ml"

  | 2 ->
# 11 "lexer.mll"
                  ( MULT )
# 134 "lexer.ml"

  | 3 ->
# 12 "lexer.mll"
                  ( DIV )
# 139 "lexer.ml"

  | 4 ->
# 13 "lexer.mll"
                  ( NOT )
# 144 "lexer.ml"

  | 5 ->
# 14 "lexer.mll"
                   ( EQUAL )
# 149 "lexer.ml"

  | 6 ->
# 15 "lexer.mll"
                   ( NOTEQUAL )
# 154 "lexer.ml"

  | 7 ->
# 16 "lexer.mll"
                  ( LOWER )
# 159 "lexer.ml"

  | 8 ->
# 17 "lexer.mll"
                  ( GREATER )
# 164 "lexer.ml"

  | 9 ->
# 18 "lexer.mll"
                 ( LOWEREQUAL )
# 169 "lexer.ml"

  | 10 ->
# 19 "lexer.mll"
                  ( GREATEREQUAL )
# 174 "lexer.ml"

  | 11 ->
# 20 "lexer.mll"
                  ( INT(1) )
# 179 "lexer.ml"

  | 12 ->
# 21 "lexer.mll"
                   ( INT(0) )
# 184 "lexer.ml"

  | 13 ->
let
# 22 "lexer.mll"
               s
# 190 "lexer.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 22 "lexer.mll"
                  ( INT(int_of_string s) )
# 194 "lexer.ml"

  | 14 ->
# 23 "lexer.mll"
                  ( SEMICOL )
# 199 "lexer.ml"

  | 15 ->
# 24 "lexer.mll"
                  ( BEGIN )
# 204 "lexer.ml"

  | 16 ->
# 25 "lexer.mll"
                ( END )
# 209 "lexer.ml"

  | 17 ->
# 27 "lexer.mll"
                  ( token lexbuf )
# 214 "lexer.ml"

  | 18 ->
# 28 "lexer.mll"
                  ( EOF )
# 219 "lexer.ml"

  | 19 ->
let
# 29 "lexer.mll"
          lxm
# 225 "lexer.ml"
= Lexing.sub_lexeme_char lexbuf lexbuf.Lexing.lex_start_pos in
# 29 "lexer.mll"
                  ( Printf.printf "Unexpected character: %c"  lxm; exit 0 )
# 229 "lexer.ml"

  | 20 ->
# 30 "lexer.mll"
                  ( PRINT )
# 234 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_token_rec lexbuf __ocaml_lex_state

;;

