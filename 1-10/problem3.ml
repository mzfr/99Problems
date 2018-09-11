(**
    3. Find the k'th element of a list. (easy)

     at 3 [ "a" ; "b"; "c"; "d"; "e" ];;
        - : string option = Some "c"
    # at 3 [ "a" ];;
        - : string option = None

*)

let rec at k = function
    | [] -> None
    | h :: t -> if k=1 then Some h else (k-1) at t
;;
