type token =
  | LP
  | RP
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
  | EOF

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
# 41 "parser.ml"
let yytransl_const = [|
  257 (* LP *);
  258 (* RP *);
  261 (* ADD *);
  262 (* SUB *);
  263 (* MULT *);
  264 (* DIV *);
  265 (* NOT *);
  266 (* EQUAL *);
  267 (* NOTEQUAL *);
  268 (* LOWER *);
  269 (* GREATER *);
  270 (* LOWEREQUAL *);
  271 (* GREATEREQUAL *);
  272 (* TRUE *);
  273 (* FALSE *);
  274 (* PRINT *);
  275 (* SEMICOL *);
  276 (* BEGIN *);
  277 (* END *);
  278 (* IF *);
  279 (* THEN *);
  280 (* ELSE *);
  281 (* WHILE *);
  282 (* DO *);
  283 (* DONE *);
  284 (* LET *);
  285 (* IN *);
  286 (* ASSIGN *);
  287 (* EXCLAM *);
  288 (* AFFECT *);
  289 (* REF *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  259 (* INT *);
  260 (* STRING *);
    0|]

let yylhs = "\255\255\
\001\000\003\000\003\000\003\000\003\000\003\000\004\000\004\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\000\000"

let yylen = "\002\000\
\002\000\002\000\003\000\006\000\006\000\005\000\001\000\003\000\
\005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
\005\000\005\000\004\000\001\000\001\000\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\024\000\
\000\000\000\000\020\000\023\000\021\000\022\000\002\000\000\000\
\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\
\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\008\000\
\000\000\000\000\000\000\019\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\006\000\
\000\000\009\000\010\000\011\000\012\000\017\000\018\000\013\000\
\014\000\015\000\016\000\004\000\005\000"

let yydgoto = "\002\000\
\008\000\015\000\016\000\017\000"

let yysindex = "\003\000\
\250\254\000\000\035\255\250\254\035\255\035\255\006\255\000\000\
\011\000\004\255\000\000\000\000\000\000\000\000\000\000\252\254\
\002\255\018\255\247\254\012\255\000\000\035\255\052\255\250\254\
\000\000\250\254\250\254\035\255\041\255\035\255\035\255\035\255\
\035\255\035\255\035\255\035\255\035\255\035\255\035\255\000\000\
\020\255\019\255\016\255\000\000\045\255\046\255\047\255\048\255\
\051\255\053\255\059\255\066\255\067\255\068\255\250\254\000\000\
\250\254\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\238\254\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\252\255\255\255\013\000"

let yytablesize = 70
let yytable = "\009\000\
\018\000\019\000\007\000\001\000\010\000\023\000\011\000\012\000\
\007\000\020\000\021\000\003\000\022\000\004\000\024\000\005\000\
\027\000\029\000\006\000\013\000\014\000\007\000\025\000\043\000\
\041\000\045\000\046\000\047\000\048\000\049\000\050\000\051\000\
\052\000\053\000\054\000\010\000\040\000\011\000\012\000\042\000\
\026\000\028\000\044\000\055\000\057\000\056\000\058\000\059\000\
\060\000\061\000\013\000\014\000\062\000\068\000\063\000\069\000\
\030\000\031\000\032\000\033\000\064\000\034\000\035\000\036\000\
\037\000\038\000\039\000\065\000\066\000\067\000"

let yycheck = "\001\000\
\005\000\006\000\021\001\001\000\001\001\010\000\003\001\004\001\
\027\001\004\001\000\000\018\001\009\001\020\001\019\001\022\001\
\026\001\022\000\025\001\016\001\017\001\028\001\021\001\028\000\
\026\000\030\000\031\000\032\000\033\000\034\000\035\000\036\000\
\037\000\038\000\039\000\001\001\024\000\003\001\004\001\027\000\
\023\001\030\001\002\001\024\001\029\001\027\001\002\001\002\001\
\002\001\002\001\016\001\017\001\002\001\055\000\002\001\057\000\
\005\001\006\001\007\001\008\001\002\001\010\001\011\001\012\001\
\013\001\014\001\015\001\002\001\002\001\002\001"

let yynames_const = "\
  LP\000\
  RP\000\
  ADD\000\
  SUB\000\
  MULT\000\
  DIV\000\
  NOT\000\
  EQUAL\000\
  NOTEQUAL\000\
  LOWER\000\
  GREATER\000\
  LOWEREQUAL\000\
  GREATEREQUAL\000\
  TRUE\000\
  FALSE\000\
  PRINT\000\
  SEMICOL\000\
  BEGIN\000\
  END\000\
  IF\000\
  THEN\000\
  ELSE\000\
  WHILE\000\
  DO\000\
  DONE\000\
  LET\000\
  IN\000\
  ASSIGN\000\
  EXCLAM\000\
  AFFECT\000\
  REF\000\
  EOF\000\
  "

let yynames_block = "\
  INT\000\
  STRING\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Ast.inst) in
    Obj.repr(
# 34 "parser.mly"
                ( _1 )
# 201 "parser.ml"
               : Ast.inst))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 36 "parser.mly"
                  ( Ast.Print(_2) )
# 208 "parser.ml"
               : Ast.inst))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'bloc) in
    Obj.repr(
# 37 "parser.mly"
                     ( Ast.Bloc(_2) )
# 215 "parser.ml"
               : Ast.inst))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : Ast.expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : Ast.inst) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : Ast.inst) in
    Obj.repr(
# 38 "parser.mly"
                                  ( Ast.If(_2,_4,_6) )
# 224 "parser.ml"
               : Ast.inst))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : Ast.inst) in
    Obj.repr(
# 39 "parser.mly"
                                     ( Ast.Let(_2,_4,_6) )
# 233 "parser.ml"
               : Ast.inst))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : Ast.expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'bloc) in
    Obj.repr(
# 40 "parser.mly"
                              ( Ast.While(_2,_4) )
# 241 "parser.ml"
               : Ast.inst))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Ast.inst) in
    Obj.repr(
# 44 "parser.mly"
            ( [_1] )
# 248 "parser.ml"
               : 'bloc))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.inst) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'bloc) in
    Obj.repr(
# 45 "parser.mly"
                        ( _1::_3 )
# 256 "parser.ml"
               : 'bloc))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : Ast.expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : Ast.expr) in
    Obj.repr(
# 48 "parser.mly"
                           ( Ast.Add(_2,_4) )
# 264 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : Ast.expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : Ast.expr) in
    Obj.repr(
# 49 "parser.mly"
                           ( Ast.Sub(_2,_4) )
# 272 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : Ast.expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : Ast.expr) in
    Obj.repr(
# 50 "parser.mly"
                            ( Ast.Mult(_2,_4) )
# 280 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : Ast.expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : Ast.expr) in
    Obj.repr(
# 51 "parser.mly"
                           ( Ast.Div(_2,_4) )
# 288 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : Ast.expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : Ast.expr) in
    Obj.repr(
# 52 "parser.mly"
                             ( Ast.Lower(_2,_4) )
# 296 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : Ast.expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : Ast.expr) in
    Obj.repr(
# 53 "parser.mly"
                               ( Ast.Greater(_2,_4) )
# 304 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : Ast.expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : Ast.expr) in
    Obj.repr(
# 54 "parser.mly"
                                  ( Ast.LowerEqual(_2,_4) )
# 312 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : Ast.expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : Ast.expr) in
    Obj.repr(
# 55 "parser.mly"
                                    ( Ast.GreaterEqual(_2,_4) )
# 320 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : Ast.expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : Ast.expr) in
    Obj.repr(
# 56 "parser.mly"
                             ( Ast.Equal(_2,_2) )
# 328 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : Ast.expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : Ast.expr) in
    Obj.repr(
# 57 "parser.mly"
                                ( Ast.NotEqual(_2,_4) )
# 336 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : Ast.expr) in
    Obj.repr(
# 58 "parser.mly"
                      ( Ast.Not(_3) )
# 343 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 59 "parser.mly"
           ( Ast.Int(_1) )
# 350 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 60 "parser.mly"
            ( Ast.True )
# 356 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 61 "parser.mly"
             ( Ast.False )
# 362 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 62 "parser.mly"
              ( Ast.String(_1) )
# 369 "parser.ml"
               : Ast.expr))
(* Entry prog *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let prog (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.inst)
;;
