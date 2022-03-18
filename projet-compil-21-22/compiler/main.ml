open String

let nettoyeur s = 
  let l = split_on_char '\n' s in
  let temp = List.fold_left (fun ret e ->
    if (contains e ':')
    then
      match ret with
        | [] -> e::ret
        | hd::tl -> if contains hd ':' then e::tl else e::ret
    else e::ret 
  ) [] l in
  concat "\n" (List.rev temp)

let process file =
  let ic = open_in file in 
  let lexbuf = Lexing.from_channel ic in
  let ast = Parser.prog Lexer.token lexbuf in
  let oc = open_out "../bytecode/test1.txt" in 
  let s = nettoyeur(Eval.evalInst ast) in
  begin
  Printf.fprintf oc "%s\tSTOP" s;
  close_out oc;
  end
  
  

let _ =
  for i = 1 to Array.length Sys.argv - 1 do
    process Sys.argv.(i)
  done
