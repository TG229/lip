let string_of_list l = "[" ^ ( 
    let rec stringify a = if (List.length a) > 1 then (
        match a with | [] -> ""
                     | h::t -> string_of_int h ^ ";" ^ (stringify t)
      )
      else 
        (
          match a with | [] -> "" | h::t -> string_of_int h
        ) 
    in stringify l 
  ) ^ "]";;


string_of_list [0;1];;
string_of_list [0];;
string_of_list [];;