(**
 2. Find the last but one (last and penultimate) elements of a list. (easy)
    # last_two [ "a" ; "b" ; "c" ; "d" ];;
        - : (string * string) option = Some ("c", "d")
    # last_two [ "a" ];;
        - : (string * string) option = None
*)

let rec two = function
    | [] -> None
    | [x;y] -> Some (x,y)
    | _ :: t -> two t;;
