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
  | EOF

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
# 41 "parser.ml"
let yytransl_const = [|
  259 (* LP *);
  260 (* RP *);
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
  257 (* INT *);
  258 (* STRING *);
    0|]

let yylhs = "\255\255\
\001\000\003\000\003\000\003\000\003\000\003\000\003\000\004\000\
\004\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\000\000"

let yylen = "\002\000\
\002\000\002\000\003\000\006\000\004\000\006\000\005\000\001\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\002\000\001\000\001\000\001\000\
\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\026\000\
\000\000\022\000\025\000\000\000\000\000\023\000\024\000\000\000\
\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\003\000\000\000\000\000\000\000\010\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\018\000\009\000\005\000\000\000\000\000\000\000\007\000\
\000\000\004\000\006\000"

let yydgoto = "\002\000\
\008\000\016\000\017\000\018\000"

let yysindex = "\007\000\
\001\255\000\000\090\255\001\255\090\255\090\255\013\255\000\000\
\003\000\000\000\000\000\090\255\090\255\000\000\000\000\116\255\
\042\255\050\255\075\255\052\255\246\254\000\000\105\255\020\255\
\090\255\090\255\090\255\090\255\090\255\090\255\090\255\090\255\
\090\255\090\255\001\255\000\000\001\255\001\255\090\255\000\000\
\062\255\131\255\140\255\020\255\089\255\035\255\081\255\118\255\
\069\255\000\000\000\000\000\000\070\255\255\254\001\255\000\000\
\001\255\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\
\251\254\000\000\000\000\000\000\000\000\000\000\000\000\114\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\184\000\175\000\149\000\140\000\105\000\079\000\053\000\027\000\
\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\012\000\255\255\017\000"

let yytablesize = 469
let yytable = "\009\000\
\017\000\002\000\022\000\025\000\026\000\027\000\028\000\001\000\
\029\000\030\000\031\000\032\000\033\000\034\000\021\000\008\000\
\019\000\020\000\003\000\039\000\004\000\008\000\005\000\023\000\
\024\000\006\000\016\000\057\000\007\000\029\000\030\000\031\000\
\032\000\033\000\034\000\052\000\041\000\042\000\043\000\044\000\
\045\000\046\000\047\000\048\000\049\000\050\000\031\000\032\000\
\033\000\034\000\054\000\051\000\015\000\058\000\053\000\059\000\
\025\000\026\000\027\000\028\000\035\000\029\000\030\000\031\000\
\032\000\033\000\034\000\026\000\027\000\028\000\036\000\029\000\
\030\000\031\000\032\000\033\000\034\000\038\000\020\000\025\000\
\026\000\027\000\028\000\034\000\029\000\030\000\031\000\032\000\
\033\000\034\000\010\000\011\000\012\000\032\000\033\000\034\000\
\056\000\037\000\013\000\030\000\031\000\032\000\033\000\034\000\
\019\000\014\000\015\000\000\000\040\000\025\000\026\000\027\000\
\028\000\021\000\029\000\030\000\031\000\032\000\033\000\034\000\
\025\000\026\000\027\000\028\000\000\000\029\000\030\000\031\000\
\032\000\033\000\034\000\033\000\034\000\000\000\000\000\000\000\
\000\000\027\000\028\000\014\000\029\000\030\000\031\000\032\000\
\033\000\034\000\000\000\028\000\013\000\029\000\030\000\031\000\
\032\000\033\000\034\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\012\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\011\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\017\000\017\000\017\000\017\000\
\017\000\000\000\017\000\017\000\017\000\017\000\017\000\000\000\
\000\000\000\000\000\000\017\000\002\000\017\000\002\000\017\000\
\017\000\002\000\017\000\017\000\002\000\017\000\016\000\016\000\
\016\000\016\000\016\000\000\000\016\000\016\000\016\000\016\000\
\000\000\000\000\000\000\000\000\000\000\016\000\000\000\016\000\
\000\000\016\000\016\000\000\000\016\000\016\000\000\000\016\000\
\015\000\015\000\015\000\015\000\015\000\000\000\015\000\015\000\
\015\000\000\000\000\000\000\000\000\000\000\000\000\000\015\000\
\000\000\015\000\000\000\015\000\015\000\000\000\015\000\015\000\
\000\000\015\000\020\000\020\000\020\000\020\000\020\000\000\000\
\020\000\020\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\020\000\000\000\020\000\000\000\020\000\020\000\000\000\
\020\000\020\000\000\000\020\000\019\000\019\000\019\000\019\000\
\019\000\000\000\019\000\000\000\000\000\021\000\021\000\021\000\
\021\000\021\000\000\000\019\000\000\000\019\000\000\000\019\000\
\019\000\000\000\019\000\019\000\021\000\019\000\021\000\000\000\
\021\000\021\000\000\000\021\000\021\000\000\000\021\000\014\000\
\014\000\014\000\014\000\014\000\000\000\000\000\000\000\000\000\
\013\000\013\000\013\000\013\000\000\000\000\000\014\000\000\000\
\014\000\000\000\014\000\014\000\000\000\014\000\014\000\013\000\
\014\000\013\000\000\000\013\000\013\000\000\000\013\000\013\000\
\000\000\013\000\012\000\012\000\012\000\000\000\000\000\000\000\
\000\000\000\000\000\000\011\000\011\000\000\000\000\000\000\000\
\000\000\012\000\000\000\012\000\000\000\012\000\012\000\000\000\
\012\000\012\000\011\000\012\000\011\000\000\000\011\000\011\000\
\000\000\011\000\011\000\000\000\011\000"

let yycheck = "\001\000\
\000\000\000\000\000\000\005\001\006\001\007\001\008\001\001\000\
\010\001\011\001\012\001\013\001\014\001\015\001\002\001\021\001\
\005\000\006\000\018\001\030\001\020\001\027\001\022\001\012\000\
\013\000\025\001\000\000\029\001\028\001\010\001\011\001\012\001\
\013\001\014\001\015\001\037\000\025\000\026\000\027\000\028\000\
\029\000\030\000\031\000\032\000\033\000\034\000\012\001\013\001\
\014\001\015\001\039\000\035\000\000\000\055\000\038\000\057\000\
\005\001\006\001\007\001\008\001\019\001\010\001\011\001\012\001\
\013\001\014\001\015\001\006\001\007\001\008\001\021\001\010\001\
\011\001\012\001\013\001\014\001\015\001\026\001\000\000\005\001\
\006\001\007\001\008\001\015\001\010\001\011\001\012\001\013\001\
\014\001\015\001\001\001\002\001\003\001\013\001\014\001\015\001\
\027\001\023\001\009\001\011\001\012\001\013\001\014\001\015\001\
\000\000\016\001\017\001\255\255\004\001\005\001\006\001\007\001\
\008\001\000\000\010\001\011\001\012\001\013\001\014\001\015\001\
\005\001\006\001\007\001\008\001\255\255\010\001\011\001\012\001\
\013\001\014\001\015\001\014\001\015\001\255\255\255\255\255\255\
\255\255\007\001\008\001\000\000\010\001\011\001\012\001\013\001\
\014\001\015\001\255\255\008\001\000\000\010\001\011\001\012\001\
\013\001\014\001\015\001\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\000\000\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\000\000\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\004\001\005\001\006\001\007\001\
\008\001\255\255\010\001\011\001\012\001\013\001\014\001\255\255\
\255\255\255\255\255\255\019\001\019\001\021\001\021\001\023\001\
\024\001\024\001\026\001\027\001\027\001\029\001\004\001\005\001\
\006\001\007\001\008\001\255\255\010\001\011\001\012\001\013\001\
\255\255\255\255\255\255\255\255\255\255\019\001\255\255\021\001\
\255\255\023\001\024\001\255\255\026\001\027\001\255\255\029\001\
\004\001\005\001\006\001\007\001\008\001\255\255\010\001\011\001\
\012\001\255\255\255\255\255\255\255\255\255\255\255\255\019\001\
\255\255\021\001\255\255\023\001\024\001\255\255\026\001\027\001\
\255\255\029\001\004\001\005\001\006\001\007\001\008\001\255\255\
\010\001\011\001\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\019\001\255\255\021\001\255\255\023\001\024\001\255\255\
\026\001\027\001\255\255\029\001\004\001\005\001\006\001\007\001\
\008\001\255\255\010\001\255\255\255\255\004\001\005\001\006\001\
\007\001\008\001\255\255\019\001\255\255\021\001\255\255\023\001\
\024\001\255\255\026\001\027\001\019\001\029\001\021\001\255\255\
\023\001\024\001\255\255\026\001\027\001\255\255\029\001\004\001\
\005\001\006\001\007\001\008\001\255\255\255\255\255\255\255\255\
\004\001\005\001\006\001\007\001\255\255\255\255\019\001\255\255\
\021\001\255\255\023\001\024\001\255\255\026\001\027\001\019\001\
\029\001\021\001\255\255\023\001\024\001\255\255\026\001\027\001\
\255\255\029\001\004\001\005\001\006\001\255\255\255\255\255\255\
\255\255\255\255\255\255\004\001\005\001\255\255\255\255\255\255\
\255\255\019\001\255\255\021\001\255\255\023\001\024\001\255\255\
\026\001\027\001\019\001\029\001\021\001\255\255\023\001\024\001\
\255\255\026\001\027\001\255\255\029\001"

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
# 37 "parser.mly"
                ( _1 )
# 300 "parser.ml"
               : Ast.inst))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 39 "parser.mly"
                  ( Ast.Print(_2) )
# 307 "parser.ml"
               : Ast.inst))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'bloc) in
    Obj.repr(
# 40 "parser.mly"
                     ( Ast.Bloc(_2) )
# 314 "parser.ml"
               : Ast.inst))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : Ast.expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : Ast.inst) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : Ast.inst) in
    Obj.repr(
# 41 "parser.mly"
                                  ( Ast.If(_2,_4,_6) )
# 323 "parser.ml"
               : Ast.inst))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : Ast.inst) in
    Obj.repr(
# 42 "parser.mly"
                        ( Ast.IfThen(_2,_4) )
# 331 "parser.ml"
               : Ast.inst))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : Ast.inst) in
    Obj.repr(
# 43 "parser.mly"
                                     ( Ast.Let(_2,_4,_6) )
# 340 "parser.ml"
               : Ast.inst))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : Ast.expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'bloc) in
    Obj.repr(
# 44 "parser.mly"
                              ( Ast.While(_2,_4) )
# 348 "parser.ml"
               : Ast.inst))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Ast.inst) in
    Obj.repr(
# 48 "parser.mly"
            ( [_1] )
# 355 "parser.ml"
               : 'bloc))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.inst) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'bloc) in
    Obj.repr(
# 49 "parser.mly"
                        ( _1::_3 )
# 363 "parser.ml"
               : 'bloc))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Ast.expr) in
    Obj.repr(
# 52 "parser.mly"
                  ( Ast.Par(_2) )
# 370 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 53 "parser.mly"
                     ( Ast.Add(_1,_3) )
# 378 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 54 "parser.mly"
                     ( Ast.Sub(_1,_3) )
# 386 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 55 "parser.mly"
                      ( Ast.Mult(_1,_3) )
# 394 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 56 "parser.mly"
                     ( Ast.Div(_1,_3) )
# 402 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 57 "parser.mly"
                       ( Ast.Lower(_1,_3) )
# 410 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 58 "parser.mly"
                         ( Ast.Greater(_1,_3) )
# 418 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 59 "parser.mly"
                            ( Ast.LowerEqual(_1,_3) )
# 426 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 60 "parser.mly"
                              ( Ast.GreaterEqual(_1,_3) )
# 434 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 61 "parser.mly"
                       ( Ast.Equal(_1,_3) )
# 442 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 62 "parser.mly"
                          ( Ast.NotEqual(_1,_3) )
# 450 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 63 "parser.mly"
                ( Ast.Not(_2) )
# 457 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 64 "parser.mly"
           ( Ast.Int(_1) )
# 464 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 65 "parser.mly"
            ( Ast.True )
# 470 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 66 "parser.mly"
             ( Ast.False )
# 476 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 67 "parser.mly"
              ( Ast.String(_1) )
# 483 "parser.ml"
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
