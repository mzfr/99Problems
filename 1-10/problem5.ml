(**
     Reverse a list.

     # rev ["a" ; "b" ; "c"];;
         - : string list = ["c"; "b"; "a"]
*)


let rec rev =  function
    | [] -> []
    | x::l -> (rev l) @ [x];;


(*Copied one*)
let rev list =
    let rec aux acc = function
      | [] -> acc
      | h::t -> aux (h::acc) t in
    aux [] list;;
