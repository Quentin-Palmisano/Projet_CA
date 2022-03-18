%{
%}

%token LP RP
%token<int> INT
%token<string> STRING
%token ADD SUB MULT DIV
%token NOT EQUAL NOTEQUAL LOWER GREATER LOWEREQUAL GREATEREQUAL
%token TRUE FALSE
%token PRINT SEMICOL BEGIN END IF THEN ELSE WHILE DO DONE
%token LET IN ASSIGN EXCLAM AFFECT REF
%token EOF

%start prog

%type <Ast.inst> prog
%type <Ast.expr> expr
%type <Ast.inst> inst

%left ADD
%left SUB
%left MULT
%left DIV
%left NOT
%left EQUAL
%left NOTEQUAL
%left LOWER
%left GREATER
%left LOWEREQUAL
%left GREATEREQUAL

%%

prog : inst EOF { $1 } ;

inst : PRINT expr { Ast.Print($2) } 
    | BEGIN bloc END { Ast.Bloc($2) } 
    | IF expr THEN inst ELSE inst { Ast.If($2,$4,$6) }
    | LET STRING ASSIGN expr IN inst { Ast.Let($2,$4,$6) }
    | WHILE expr DO bloc DONE { Ast.While($2,$4) }
    /* | STRING AFFECT expr { Ast.Affect($1,$3) }*/
    ;

bloc : inst { [$1] }
    | inst SEMICOL bloc { $1::$3 }
    ;

expr : LP expr ADD expr RP { Ast.Add($2,$4) }
     | LP expr SUB expr RP { Ast.Sub($2,$4) }
     | LP expr MULT expr RP { Ast.Mult($2,$4) }
     | LP expr DIV expr RP { Ast.Div($2,$4) }
     | LP expr LOWER expr RP { Ast.Lower($2,$4) }
     | LP expr GREATER expr RP { Ast.Greater($2,$4) }
     | LP expr LOWEREQUAL expr RP { Ast.LowerEqual($2,$4) }
     | LP expr GREATEREQUAL expr RP { Ast.GreaterEqual($2,$4) }
     | LP expr EQUAL expr RP { Ast.Equal($2,$2) }
     | LP expr NOTEQUAL expr RP { Ast.NotEqual($2,$4) }
     | LP NOT expr RP { Ast.Not($3) }
     | INT { Ast.Int($1) }
     | TRUE { Ast.True }
     | FALSE { Ast.False }
     | STRING { Ast.String($1) }
     
     /*| REF expr { Ast.Ref($2) }
     | EXCLAM STRING { Ast.Access($2) }*/
     ;

%%
