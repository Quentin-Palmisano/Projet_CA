type expr =
  | Add of expr * expr
  | Sub of expr * expr
  | Mult of expr * expr
  | Div of expr * expr
  | Neg of expr
  | Pos of expr
  | Parenthesis of expr
  | Lower of expr * expr
  | Greater of expr * expr
  | Equal of expr * expr
  | And of expr * expr
  | Or of expr * expr
  | Not of expr
  | Float of float
  | Int of int

type inst = 
  | Print of expr list
  | Rem of string