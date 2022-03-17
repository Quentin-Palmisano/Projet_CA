%{
%}

%token ADD EOF PRINT SEMICOL SUB MULT DIV LOWER GREATER EQUAL AND OR NOT
%token<int> INT
%token<float> FLOAT

%start prog

%type <Ast.inst> prog
%type <Ast.expr> expr
%type <Ast.inst> inst

%left ADD
%left SUB
%left MULT
%left DIV

%%

prog : inst EOF { $1 } ;

inst : PRINT seq { Ast.Print($2) } ;

seq : {[]}
    | expr { [$1] }
    | expr SEMICOL seq { $1::$3 }
    ;

expr : expr ADD expr { Ast.Add($1,$3) }
     | expr SUB expr { Ast.Sub($1,$3) }
     | expr MULT expr { Ast.Mult($1,$3) }
     | expr DIV expr { Ast.Div($1,$3) }
     | SUB expr { Ast.Neg($2) }
     | ADD expr { Ast.Pos($2) }
     | expr LOWER expr { Ast.Lower($1,$3) }
     | expr GREATER expr { Ast.Greater($1,$3) }
     | expr EQUAL expr { Ast.Equal($1,$3) }
     | expr AND expr { Ast.And($1,$3) }
     | expr OR expr { Ast.Or($1,$3) }
     | NOT expr { Ast.Not($2) }
     | INT { Ast.Int($1) }
     | FLOAT { Ast.Float($1) }
     ;

%%
