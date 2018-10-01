(**
    Eliminate consecutive duplicates of list elements.

        # compress ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"];;
        - : string list = ["a"; "b"; "c"; "a"; "d"; "e"]
*)

let rec compress (mylist : 'a list) : 'a list = match mylist with
   | a::(b::_ as t) -> if a = b then compress t else a::compress t
   | _ -> mylist;;
