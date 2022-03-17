open Ast

let rec pprint fmt e =
  match e with
    | Add(e1,e2) -> 
        Format.fprintf fmt "(%a + %a)" pprint e1 pprint e2
    | Sub(e1,e2) -> 
        Format.fprintf fmt "(%a - %a)" pprint e1 pprint e2
    | Mult(e1,e2) -> 
        Format.fprintf fmt "(%a * %a)" pprint e1 pprint e2
    | Div(e1,e2) -> 
        Format.fprintf fmt "(%a / %a)" pprint e1 pprint e2
    | Int n -> 
        Format.fprintf fmt "%d" n
