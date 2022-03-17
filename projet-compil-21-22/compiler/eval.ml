open Ast
     

let rec eval e =
  match e with
  | Add(e1,e2) -> (eval e2)^"PUSH\n"^(eval e1)^"PRIM ADD\n"
  | Sub(e1,e2) ->(eval e2)^"PUSH\n"^(eval e1)^"PRIM SUB\n"
  | Mult(e1,e2) -> (eval e2)^"PUSH\n"^(eval e1)^"PRIM MUL\n"
  | Div(e1,e2) -> (eval e2)^"PUSH\n"^(eval e1)^"PRIM DIV\n"
  | Lower(e1,e2) -> (eval e2)^"PUSH\n"^(eval e1)^"PRIM LT\n"
  | Greater(e1,e2) -> (eval e2)^"PUSH\n"^(eval e1)^"PRIM GT\n"
  | LowerEqual(e1,e2) -> (eval e2)^"PUSH\n"^(eval e1)^"PRIM LE\n"
  | GreaterEqual(e1,e2) -> (eval e2)^"PUSH\n"^(eval e1)^"PRIM GE\n"
  | Equal(e1,e2) -> (eval e2)^"PUSH\n"^(eval e1)^"PRIM EQ\n"
  | NotEqual(e1,e2) -> (eval e2)^"PUSH\n"^(eval e1)^"PRIM NE\n"
  | Not(e) -> (eval e)^"PRIM NOT\n"
  | Int n -> "CONST "^(string_of_int n)^"\n"
  | True -> "CONST 1\n"
  | False -> "CONST 0\n"
  (* | Ref e -> (ref (eval e)); 0
  | Access s -> !s *)

let rec evalInst i =  
match i with
    | Print e -> (eval e)^"PRIM PRINT\n"
    (* | Bloc l -> List.iter (fun x -> evalInst x) l
    | If (e,i1,i2) -> if (eval e)=1 then (evalInst i1) else (evalInst i2) *)
    (* | Affect (s,e) -> s := (eval e) *)