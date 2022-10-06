let rec dup l = match l with 
  | [] -> false
  | h :: t -> let rec is_present x l = match l with
      | [] -> false
      | h :: t -> if (h = x) then true else is_present x t
      in is_present h t;;

