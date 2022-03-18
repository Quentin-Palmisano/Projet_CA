open Ast

let rec eval e k =
  match e with
  | Add(e1,e2) -> (eval e2 k)^"\tPUSH\n"^(eval e1 (k+1))^"\tPRIM +\n"
  | Sub(e1,e2) ->(eval e2 k)^"\tPUSH\n"^(eval e1 (k+1))^"\tPRIM -\n"
  | Mult(e1,e2) -> (eval e2 k)^"\tPUSH\n"^(eval e1 (k+1))^"\tPRIM *\n"
  | Div(e1,e2) -> (eval e2 k)^"\tPUSH\n"^(eval e1 (k+1))^"\tPRIM /\n"
  | Lower(e1,e2) -> (eval e2 k)^"\tPUSH\n"^(eval e1 (k+1))^"\tPRIM <\n"
  | Greater(e1,e2) -> (eval e2 k)^"\tPUSH\n"^(eval e1 (k+1))^"\tPRIM >\n"
  | LowerEqual(e1,e2) -> (eval e2 k)^"\tPUSH\n"^(eval e1 (k+1))^"\tPRIM <=\n"
  | GreaterEqual(e1,e2) -> (eval e2 k)^"\tPUSH\n"^(eval e1 (k+1))^"\tPRIM >=\n"
  | Equal(e1,e2) -> (eval e2 k)^"\tPUSH\n"^(eval e1 (k+1))^"\tPRIM ==\n"
  | NotEqual(e1,e2) -> (eval e2 k)^"\tPUSH\n"^(eval e1 (k+1))^"\tPRIM !=\n"
  | Not(e) -> (eval e k)^"\tPRIM not\n"
  | Int n -> "\tCONST "^(string_of_int n)^"\n"
  | True -> "\tCONST 1\n"
  | False -> "\tCONST 0\n"
  | String s -> "\tACC "^(string_of_int k)^"\n"
  (* | Ref e -> (ref (eval e)); 0
  | Access s -> !s *)

let rec evalInst i p k =
match i with
    | Print e -> (eval e k)^"\tPRIM print\n"
    | Bloc l -> let s, l = List.fold_left (fun (s,tmp) x -> (s^(evalInst x tmp k), [(List.nth tmp 0) + 1; (List.nth tmp 1) + 1])) ("",p) l in s
    | If (e,i1,i2) -> (eval e k)^"\tBRANCHIFNOT L"^(string_of_int(List.nth p 0))^"\n"^(evalInst i1 [(List.nth p 0) + 2; (List.nth p 1) + 1] k)^"\tBRANCH S"^(string_of_int(List.nth p 1))^"\nL"^(string_of_int((List.nth p 0)))^":\n"^(evalInst i2 [(List.nth p 0) + 1; (List.nth p 1)] k)^"S"^(string_of_int(List.nth p 1))^":\n"
    | Let (s,e,i) -> (eval e k)^"\tPUSH\n"^(evalInst i p k)^"\tPOP\n"
    | While (e,b) -> ""
    (* | Affect (s,e) -> s := (eval e) *)