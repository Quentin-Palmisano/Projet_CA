%{
%}

%token<int> INT
%token<string> STRING
%token LP RP
%token ADD SUB MULT DIV
%token NOT EQUAL NOTEQUAL LOWER GREATER LOWEREQUAL GREATEREQUAL
%token TRUE FALSE
%token PRINT SEMICOL BEGIN END IF THEN ELSE WHILE DO DONE
%token LET IN ASSIGN EXCLAM AFFECT REF
%token AND WHERE LA RA LC RC COMMA LENGTH
%token CONS HD TL EMPTY NIL
%token EOF

%start prog

%type <Ast.inst> prog
%type <Ast.expr> expr
%type <Ast.inst> inst

%left LET
%left AFFECT
%left EXCLAM
%left ASSIGN
%left EMPTY
%left TL
%left HD
%left CONS
%left COMMA
%left AND
%left IN
%left THEN
%left ELSE
%left WHERE
%left DO
%left EQUAL
%left NOTEQUAL
%left LOWER
%left GREATER
%left LOWEREQUAL
%left GREATEREQUAL
%left ADD
%left SUB
%left MULT
%left DIV
%left NOT
%left REF

%%

prog : inst EOF { $1 } ;

inst : PRINT expr { Ast.Print($2) } 
    | BEGIN bloc END { Ast.Bloc($2) } 
    | IF expr THEN inst ELSE inst { Ast.If($2,$4,$6) }
    | IF expr THEN inst { Ast.IfThen($2,$4) }
    | LET et IN inst{ Ast.LetAnd($2,$4) }
    | WHILE cond DO bloc DONE { Ast.While($2,$4) }
    | STRING AFFECT expr { Ast.Affect ($1,$3) }
    | inst WHERE affect { Ast.Where($1,$3) }
    | STRING LC expr RC AFFECT expr { Ast.TabAffect($1,$3,$6) }
    ;

bloc : inst { [$1] }
    | inst SEMICOL bloc { $1::$3 }
    ;

et : affect { [$1] }
    | affect AND et { $1::$3 } ;

affect : STRING ASSIGN expr { ($1,$3) } ;

expr : LP expr RP { Ast.Par($2) }
     | expr ADD expr { Ast.Add($1,$3) }
     | expr SUB expr { Ast.Sub($1,$3) }
     | expr MULT expr { Ast.Mult($1,$3) }
     | expr DIV expr { Ast.Div($1,$3) }
     | cond { Ast.Cond($1) }
     | INT { Ast.Int($1) }
     | STRING { Ast.String($1) }
     | REF expr { Ast.Ref($2) }
     | EXCLAM STRING { Ast.Exclam($2) }
     | LA seq RA { Ast.Tab($2) }
     | STRING LC expr RC { Ast.TabGet($1,$3) }
     | LENGTH expr { Ast.Length($2) }
     | CONS expr expr { Ast.Cons($2,$3) }
     | HD expr { Ast.Hd($2) }
     | TL expr { Ast.Tl($2) }
     | EMPTY expr { Ast.Empty($2) }
     | NIL { Ast.Nil }
     ;

seq : expr { [$1] }
    | expr COMMA seq { $1::$3 }
    ;
    
cond : LP cond RP { Ast.Par($2) }
     | expr LOWER expr { Ast.Lower($1,$3) }
     | expr GREATER expr { Ast.Greater($1,$3) }
     | expr LOWEREQUAL expr { Ast.LowerEqual($1,$3) }
     | expr GREATEREQUAL expr { Ast.GreaterEqual($1,$3) }
     | expr EQUAL expr { Ast.Equal($1,$3) }
     | expr NOTEQUAL expr { Ast.NotEqual($1,$3) }
     | NOT cond { Ast.Not($2) }
     | TRUE { Ast.True }
     | FALSE { Ast.False }
     ;

%%
