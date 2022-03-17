
EXE=eval

all:
	ocamllex lexer.mll;
	ocamlc -c ast.ml;
	ocamlc -c pretty_printer.ml;
	ocamlc -c eval.ml;
	ocamlyacc parser.mly;
	ocamlc -c parser.mli;
	ocamlc -c lexer.ml;
	ocamlc -c parser.ml;
	ocamlc -c main.ml;
	ocamlc -o $(EXE) ast.cmo pretty_printer.cmo eval.cmo lexer.cmo parser.cmo main.cmo


clean:
	rm -rf *.cmo *.cmi $(EXE)