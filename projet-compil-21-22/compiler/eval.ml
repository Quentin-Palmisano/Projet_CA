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
    | (k',_)::q when k = k' -> supprimer q k
    | a::q -> a::supprimer q k

let incrAddr l =
  match !l with
    | [] -> ()
    | _ -> l := List.map (fun (s,d) -> (s,d+1)) !l

let decrAddr l =
  match !l with
    | [] -> ()
    | _ -> l := List.map (fun (s,d) -> (s,d-1)) !l

let ajouterAddr l d = l := (d,0)::(!l)

let supprimerAddr l d = l := (supprimer !l d)

let addr = ref [];;

let rec eval e =
  let updateEnv1 e1 e2 s =
    let tmp1 = (eval e2) in
      incrAddr addr;
      let tmp2 = (eval e1) in
        decrAddr addr;
        tmp1^"\tPUSH\n"^tmp2^"\tPRIM "^s^"\n"
  in

  match e with
    | Par e -> (eval e)
    | Add(e1,e2) -> updateEnv1 e1 e2 "+"
    | Sub(e1,e2) -> updateEnv1 e1 e2 "-"
    | Mult(e1,e2) -> updateEnv1 e1 e2 "*"
    | Div(e1,e2) -> updateEnv1 e1 e2 "/"
    | Lower(e1,e2) -> updateEnv1 e1 e2 "<"
    | Greater(e1,e2) -> updateEnv1 e1 e2 ">"
    | LowerEqual(e1,e2) -> updateEnv1 e1 e2 "<="
    | GreaterEqual(e1,e2) -> updateEnv1 e1 e2 ">="
    | Equal(e1,e2) -> updateEnv1 e1 e2 "="
    | NotEqual(e1,e2) -> updateEnv1 e1 e2 "!="
    | Not e -> (eval e)^"\tPRIM not\n"
    | Int n -> "\tCONST "^(string_of_int n)^"\n"
    | True -> "\tCONST 1\n"
    | False -> "\tCONST 0\n"
    | String s -> "\tACC "^(string_of_int(rechercher !addr s))^"\n"
    | Ref e -> (eval e)^"\tMAKEBLOCK 1\n"
    | Exclam s -> (
      let tmp1 = "\tCONST 0\n\tPUSH\n" in
      incrAddr addr;
      let tmp2 = "\tACC "^(string_of_int(rechercher !addr s))^"\n\tGETVECTITEM\n" in
        decrAddr addr;
        tmp1^tmp2
    )
    | Tab l -> (
        let rec f list cpt =
          match list with
            | [] -> ("", cpt)
            | [e] -> ((eval e), cpt)
            | hd::tl -> let (s, c) = (f tl (cpt+1)) in ((eval hd)^"\tPUSH\n"^s, c)
        in
        let (s,cpt) = f (List.rev l) 1 in 
          s^"\tMAKEBLOCK "^(string_of_int cpt)^"\n"
    )
    | TabGet(s,e) -> (
      let tmp1 = (eval e)^"\tPUSH\n\tPUSH\n" in
      incrAddr addr;
      incrAddr addr;
      let tmp2 = "\tACC "^(string_of_int(rechercher !addr s))^"\n\tVECTLENGTH\n\tPRIM >\n\tBRANCHIFNOT fin\n" in
        decrAddr addr;
        let tmp3 = "\tACC "^(string_of_int(rechercher !addr s))^"\n\tGETVECTITEM\n\tfin:\n" in
        decrAddr addr;
          tmp1^tmp2^tmp3
    )
    | Length e -> (eval e)^"\tVECTLENGTH\n"
    | Cons(e1,e2) -> (eval e2)^"\tPUSH\n"^(eval e1)^"\tMAKEBLOCK 2\n"
    | Hd e -> (eval e)^"\tBRANCHIFNOT fin\n\tGETFIELD 0\n\tfin:\n"
    | Tl e -> (eval e)^"\tGETFIELD 1\n"
    | Empty e -> "\tCONST 0\n\tPUSH\n"^(eval e)^"\tPRIM =\n"
    | Nil -> "\tCONST 0\n"
    | Cond e -> (eval e)


let rec evalInst i p =

  let updateEval s e =
    let tmp1 = (eval e) in
      incrAddr addr;
      ajouterAddr addr s;
      tmp1^"\tPUSH\n"
  in

  let updateEvalInst s i p =
    let tmp2 = (evalInst i p) in
        decrAddr addr;
        supprimerAddr addr s;
        tmp2^"\tPOP\n"
  in

match i with
    | Print e -> (eval e)^"\tPRIM print\n"
    | Bloc l -> let s, l = List.fold_left (fun (s,tmp) x -> (s^(evalInst x tmp), [(List.nth tmp 0) + 1; (List.nth tmp 1) + 1])) ("",p) l in s
    | If (e,i1,i2) -> (eval e)^"\tBRANCHIFNOT L"^(string_of_int(List.nth p 0))^"\n"^(evalInst i1 [(List.nth p 0) + 2; (List.nth p 1) + 1])^"\tBRANCH S"^(string_of_int(List.nth p 1))^"\nL"^(string_of_int((List.nth p 0)))^":\n"^(evalInst i2 [(List.nth p 0) + 1; (List.nth p 1)])^"S"^(string_of_int(List.nth p 1))^":\n"
    | IfThen (e,i1) -> (eval e)^"\tBRANCHIFNOT S"^(string_of_int(List.nth p 1))^"\n"^(evalInst i1 [(List.nth p 0) + 2; (List.nth p 1) + 1])^"\tBRANCH S"^(string_of_int(List.nth p 1))^"\nL"^(string_of_int((List.nth p 0)))^":\nS"^(string_of_int(List.nth p 1))^":\n"
    | While (e,b) -> "L"^(string_of_int(List.nth p 0))^":\n"^(eval e)^"\tBRANCHIFNOT L"^(string_of_int((List.nth p 0)+1))^"\n"^(evalInst (Bloc b) [(List.nth p 0) + 2; (List.nth p 1)])^"\tBRANCH L"^(string_of_int(List.nth p 0))^"\nL"^(string_of_int((List.nth p 0)+1))^":\n"
    | Affect (s,e) -> (
      let tmp1 = (eval e)^"\tPUSH\n\tCONST 0\n\tPUSH\n" in
        incrAddr addr;
        incrAddr addr;
        let tmp2 = "\tACC "^(string_of_int(rechercher !addr s))^"\n\tSETVECTITEM\n" in
          decrAddr addr;
          decrAddr addr;
          tmp1^tmp2
    )
    | LetAnd (l,i) -> (
      let s = List.fold_left (fun ret (s,e) -> ret^(updateEval s e)) "" l in
      s^(updateEvalInst s i p)
    )
    | Where(i,(s,e)) -> evalInst (LetAnd([(s,e)], i)) p
    | TabAffect (s,e1,e2) -> (
        let tmp1 = (eval e2)^"\tPUSH\n"^(eval e1)^"\tPUSH\n" in
          incrAddr addr;
          incrAddr addr;
          let tmp2 = "\tACC "^(string_of_int(rechercher !addr s))^"\n\tSETVECTITEM\n" in
            decrAddr addr;
            decrAddr addr;
            tmp1^tmp2
    )