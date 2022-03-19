type expr =
  | Par of expr 
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
  | Ref of expr
  | Exclam of string

type inst = 
  | Print of expr
  | Bloc of inst list
  | If of expr * inst * inst
  | IfThen of expr * inst
  | Let of string * expr * inst
  | While of expr * inst list
  | Affect of string * expr
