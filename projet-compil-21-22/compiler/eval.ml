open Ast

type ('key,'value) dict = ('key * 'value) list

let rec rechercher d k =
  match d with
    | [] -> raise Not_found
    | (k', v)::_ when k' = k -> v
    | _::q -> rechercher q k

let rec supprimer d k =
  match d with
    [] -> []
    | (k', _)::q when k = k' -> supprimer q k
    | a::q -> a::supprimer q k

let rec eval e k p =
  match e with
    | Par e -> (eval e k p)
    | Add(e1,e2) -> (eval e2 k (List.map (fun (s, d) -> (s, d+1)) p))^"\tPUSH\n"^(eval e1 (k+1) (List.map (fun (s, d) -> (s, d+2)) p))^"\tPRIM +\n"
    | Sub(e1,e2) ->(eval e2 k p)^"\tPUSH\n"^(eval e1 (k+1) p)^"\tPRIM -\n"
    | Mult(e1,e2) -> (eval e2 k p)^"\tPUSH\n"^(eval e1 (k+1) p)^"\tPRIM *\n"
    | Div(e1,e2) -> (eval e2 k p)^"\tPUSH\n"^(eval e1 (k+1) p)^"\tPRIM /\n"
    | Lower(e1,e2) -> (eval e2 k p)^"\tPUSH\n"^(eval e1 (k+1) p)^"\tPRIM <\n"
    | Greater(e1,e2) -> (eval e2 k p)^"\tPUSH\n"^(eval e1 (k+1) p)^"\tPRIM >\n"
    | LowerEqual(e1,e2) -> (eval e2 k p)^"\tPUSH\n"^(eval e1 (k+1) p)^"\tPRIM <=\n"
    | GreaterEqual(e1,e2) -> (eval e2 k p)^"\tPUSH\n"^(eval e1 (k+1) p)^"\tPRIM >=\n"
    | Equal(e1,e2) -> (eval e2 k p)^"\tPUSH\n"^(eval e1 (k+1) p)^"\tPRIM ==\n"
    | NotEqual(e1,e2) -> (eval e2 k p)^"\tPUSH\n"^(eval e1 (k+1) p)^"\tPRIM !=\n"
    | Not(e) -> (eval e k p)^"\tPRIM not\n"
    | Int n -> "\tCONST "^(string_of_int n)^"\n"
    | True -> "\tCONST 1\n"
    | False -> "\tCONST 0\n"
    | String s -> "\tACC "^(string_of_int(rechercher p s))^"\n"
    (* | Ref e -> (ref (eval e)); 0
    | Access s -> !s *)

let rec evalInst i p k p' =
match i with
    | Print e -> (eval e k p')^"\tPRIM print\n"
    | Bloc l -> let s, l = List.fold_left (fun (s,tmp) x -> (s^(evalInst x tmp k p'), [(List.nth tmp 0) + 1; (List.nth tmp 1) + 1])) ("",p) l in s
    | If (e,i1,i2) -> (eval e k p')^"\tBRANCHIFNOT L"^(string_of_int(List.nth p 0))^"\n"^(evalInst i1 [(List.nth p 0) + 2; (List.nth p 1) + 1] k p')^"\tBRANCH S"^(string_of_int(List.nth p 1))^"\nL"^(string_of_int((List.nth p 0)))^":\n"^(evalInst i2 [(List.nth p 0) + 1; (List.nth p 1)] k p')^"S"^(string_of_int(List.nth p 1))^":\n"
    | Let (s,e,i) -> (eval e k ((s,0)::p'))^"\tPUSH\n"^(evalInst i p k ((s,0)::p'))^"\tPOP\n"
    | While (e,b) -> "L"^(string_of_int(List.nth p 0))^":\n"^(eval e k p')^"\tBRANCHIFNOT L"^(string_of_int((List.nth p 0)+1))^"\n"^(evalInst (Bloc b) [(List.nth p 0) + 2; (List.nth p 1)] k p')^"\tBRANCH L"^(string_of_int(List.nth p 0))^"\nL"^(string_of_int((List.nth p 0)+1))^":\n"
    (* | Affect (s,e) -> s := (eval e) *)