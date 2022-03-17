%{
%}

%token<int> INT
%token<string> STRING
%token ADD SUB MULT DIV
%token NOT EQUAL NOTEQUAL LOWER GREATER LOWEREQUAL GREATEREQUAL
%token PRINT SEMICOL BEGIN END IF THEN ELSE EXCLAM AFFECT REF
%token LET IN ASSIGN
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
    | STRING AFFECT expr { Ast.Affect($1,$3) }
    | LET STRING ASSIGN expr IN inst { Ast.Let($2,$4,$6) }
    ;

bloc : inst { [$1] }
    | inst SEMICOL bloc { $1::$3 }
    ;

expr : expr ADD expr { Ast.Add($1,$3) }
     | expr SUB expr { Ast.Sub($1,$3) }
     | expr MULT expr { Ast.Mult($1,$3) }
     | expr DIV expr { Ast.Div($1,$3) }
     | expr LOWER expr { Ast.Lower($1,$3) }
     | expr GREATER expr { Ast.Greater($1,$3) }
     | expr LOWEREQUAL expr { Ast.LowerEqual($1,$3) }
     | expr GREATEREQUAL expr { Ast.GreaterEqual($1,$3) }
     | expr EQUAL expr { Ast.Equal($1,$3) }
     | expr NOTEQUAL expr { Ast.NotEqual($1,$3) }
     | NOT expr { Ast.Not($2) }
     | INT { Ast.Int($1) }
     | REF expr { Ast.Ref($2) }
     | EXCLAM STRING { Ast.Access($2) }
     ;

%%
