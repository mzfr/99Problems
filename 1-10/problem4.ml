(**
     Find the number of elements of a list. (easy)

     # length [ "a" ; "b" ; "c"];;
         - : int = 3
     # length [];;
         - : int = 0
*)

let rec length = function
    | [] -> 0
    | _ :: t -> 1 + length t;;


(*Tail recursion method....copied*)

let length list =
  let rec aux n = function
    | [] -> n
    | _::t -> aux (n+1) t
  in aux 0 list
;;
