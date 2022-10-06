type 'a option = Some of 'a | None;; 
    
let minfun f a b = if (a > b) then None else (
    let rec minfunrec f a b = if a = b then f a 
      else min (f a) (minfunrec f (a+1) b)
    in Some (minfunrec f a b)
  );;

minfun (fun x -> x*(-x)) (-1) 5;;