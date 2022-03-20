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
  | Tab of expr list
  | TabGet of string * expr
  | Length of expr
  | Cons of expr * expr
  | Hd of expr
  | Tl of expr
  | Empty of expr
  | Nil

type inst = 
  | Print of expr
  | Bloc of inst list
  | If of expr * inst * inst
  | IfThen of expr * inst
  | While of expr * inst list
  | Affect of string * expr
  | LetAnd of (string * expr) list * inst
  | Where of inst * (string * expr)
  | TabAffect of string * expr * expr
