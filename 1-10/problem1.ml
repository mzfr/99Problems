(**
    1. Write a function last : 'a list -> 'a option that returns the last element of a list.

            # last [ "a" ; "b" ; "c" ; "d" ];;
              - : string option = Some "d"
            # last [];;
              - : 'a option = None
*)

let rec last = function
    | [] -> None
    | [x] -> Some x
    | _ :: t -> last t;;
