(**
     Find out whether a list is a palindrome. (easy)
        - A palindrome is its own reverse.

     # is_palindrome [ "x" ; "a" ; "m" ; "a" ; "x" ];;
        - : bool = true
    # not (is_palindrome [ "a" ; "b" ]);;
        - : bool = true

*)


let rec rev = function
    | [] -> []
    | x::l -> (rev l) @[x]

let is_palindrome list = if list = (rev list) then true else false;;


(*Copied*)

 let is_palindrome list = list = List.rev list
