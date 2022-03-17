let process file =
  let ic = open_in file in 
  let lexbuf = Lexing.from_channel ic in
  let ast = Parser.prog Lexer.token lexbuf in
  let oc = open_out "../bytecode/test1.txt" in 
  let s = (Eval.evalInst ast 0) in
  begin
  Printf.fprintf oc "%sfin:\n\tSTOP" s;
  close_out oc;
  end
  
  

let _ =
  for i = 1 to Array.length Sys.argv - 1 do
    process Sys.argv.(i)
  done
