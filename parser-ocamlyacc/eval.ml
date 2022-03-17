open Ast

let rec eval e =
  match e with
  | Add(e1,e2) -> eval e1 + eval e2
  | Sub(e1,e2) -> eval e1 - eval e2
  | Mult(e1,e2) -> eval e1 * eval e2
  | Div(e1,e2) -> eval e1 / eval e2
  | Neg(e) -> -1 * eval e
  | Pos(e) -> eval e
  | Lower(e1,e2) -> if(eval e1 < eval e2) then 1 else 0
  | Greater(e1,e2) -> if(eval e1 > eval e2) then 1 else 0
  | Equal(e1,e2) -> if(eval e1 = eval e2) then 1 else 0
  | And(e1,e2) -> if(eval e1 && eval e2) then 1 else 0
  | Or(e1,e2) -> if(eval e1 || eval e2) then 1 else 0
  | Not(e) -> if(not(eval e)) then 1 else 0
  | Int n -> n
  | Float n -> n

let rec evalInst i =
  match i with
  | Print l -> (List.iter (fun x -> print_int(eval x); print_char(' ')) l;
    print_newline()
  )