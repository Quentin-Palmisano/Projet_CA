open Ast

let rec eval e =
  match e with
  | Add(e1,e2) -> eval e1 + eval e2
  | Sub(e1,e2) -> eval e1 - eval e2
  | Mult(e1,e2) -> eval e1 * eval e2
  | Div(e1,e2) -> eval e1 / eval e2
  | Lower(e1,e2) -> if(eval e1 < eval e2) then 1 else 0
  | Greater(e1,e2) -> if(eval e1 > eval e2) then 1 else 0
  | LowerEqual(e1,e2) -> if(eval e1 <= eval e2) then 1 else 0
  | GreaterEqual(e1,e2) -> if(eval e1 >= eval e2) then 1 else 0
  | Equal(e1,e2) -> if(eval e1 = eval e2) then 1 else 0
  | NotEqual(e1,e2) -> if(eval e1 != eval e2) then 1 else 0
  | Not(e) -> if((eval e)=0) then 1 else if((eval e)=1) then 0 else -1
  | Int n -> n
  (* | Ref e -> (ref (eval e)); 0
  | Access s -> !s *)

let rec evalInst i =  
match i with
    | Print e -> print_int (eval e)
    | Bloc l -> List.iter (fun x -> evalInst x) l
    | If (e,i1,i2) -> if (eval e)=1 then (evalInst i1) else (evalInst i2)
    (* | Affect (s,e) -> s := (eval e) *)