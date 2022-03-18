open Ast
     
let env = Hashtbl.create 3;;
Hashtbl.add env "L" 0;;
Hashtbl.add env "S" 0;;

let rec eval e =
  match e with
  | Add(e1,e2) -> (eval e2)^"\tPUSH\n"^(eval e1)^"\tPRIM +\n"
  | Sub(e1,e2) ->(eval e2)^"\tPUSH\n"^(eval e1)^"\tPRIM -\n"
  | Mult(e1,e2) -> (eval e2)^"\tPUSH\n"^(eval e1)^"\tPRIM *\n"
  | Div(e1,e2) -> (eval e2)^"\tPUSH\n"^(eval e1)^"\tPRIM /\n"
  | Lower(e1,e2) -> (eval e2)^"\tPUSH\n"^(eval e1)^"\tPRIM <\n"
  | Greater(e1,e2) -> (eval e2)^"\tPUSH\n"^(eval e1)^"\tPRIM >\n"
  | LowerEqual(e1,e2) -> (eval e2)^"\tPUSH\n"^(eval e1)^"\tPRIM <=\n"
  | GreaterEqual(e1,e2) -> (eval e2)^"\tPUSH\n"^(eval e1)^"\tPRIM >=\n"
  | Equal(e1,e2) -> (eval e2)^"\tPUSH\n"^(eval e1)^"\tPRIM ==\n"
  | NotEqual(e1,e2) -> (eval e2)^"\tPUSH\n"^(eval e1)^"\tPRIM !=\n"
  | Not(e) -> (eval e)^"\tPRIM not\n"
  | Int n -> "\tCONST "^(string_of_int n)^"\n"
  | True -> "\tCONST 1\n"
  | False -> "\tCONST 0\n"
  | String s -> "\tACC 0\n"
  (* | Ref e -> (ref (eval e)); 0
  | Access s -> !s *)

let rec evalInst i =  
match i with
    | Print e -> (eval e)^"\tPRIM print\n"
    | Bloc l -> List.fold_left (fun s x -> s^(evalInst x)) "" l
    (* | If (e,i1,i2) -> (eval e)^"\tBRANCHIFNOT L2\nL1:\n"^(evalInst i1)^"\tBRANCH L3\nL2:\n"^(evalInst i2)^"L3:\n"  *)
    | If (e,i1,i2) -> (
      Hashtbl.replace env "L" ((Hashtbl.find env "L")+2);
      Hashtbl.replace env "S" ((Hashtbl.find env "S")+1);
      (eval e)^"\tBRANCHIFNOT L"^(string_of_int(Hashtbl.find env "L"))^"\n"^(evalInst i1)^"\tBRANCH S"^(string_of_int(Hashtbl.find env "S"))^"\nL"^(string_of_int((Hashtbl.find env "L")))^":\n"^(evalInst i2 )^"S"^(string_of_int(Hashtbl.find env "S"))^":\n" 
      )
    | Let (s,e,i) -> (eval e)^"\tPUSH\n"^(evalInst i)^"\tPOP\n"
    | While (e,b) -> ""
    (* | Affect (s,e) -> s := (eval e) *)