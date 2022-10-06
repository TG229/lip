type grade = Val of int | CumLaude;;

let is_valid g = match g with 
  | Val n -> (n >= 18 && n <= 30) 
  | CumLaude -> true;;

let int_of_grade g = if(not(is_valid g)) then failwith "Errore" else (
    match g with 
    | Val n -> n 
    | CumLaude -> 32)
;;

let avg l = 
  let sum = List.fold_right (fun a b -> (int_of_grade a) + b) l 0
  in (float_of_int sum) /. float_of_int (List.length l);;