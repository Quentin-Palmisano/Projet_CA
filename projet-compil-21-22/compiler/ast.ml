type expr =
  | Add of expr * expr
  | Sub of expr * expr
  | Mult of expr * expr
  | Div of expr * expr
  | Lower of expr * expr
  | Greater of expr * expr
  | LowerEqual of expr * expr
  | GreaterEqual of expr * expr
  | Equal of expr * expr
  | NotEqual of expr * expr
  | Not of expr
  | Int of int
  | True
  | False
  | String of string
  (* | String of int ref
  | Ref of expr
  | Access of int ref *)

type inst = 
  | Print of expr
  | Bloc of inst list
  | If of expr * inst * inst
  | Let of string * expr * inst
  (* | Affect of int ref * expr *)
