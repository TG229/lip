let minmax f a b = if a > b then
    failwith "Error: value 'a' should be lower or equal to value 'b'." else (
    ( 
      (
        let rec minfunc f a b = if a = b then f a else (
            min (f a) (minfunc f (a+1) b)
          ) in minfunc f a b 
      ) , 
      (
        let rec maxfunc f a b = if a = b then f a else (
            max (f a) (maxfunc f (a+1) b)
          ) in maxfunc f a b
      )
    )
  );; 

minmax (fun x -> x * x) (-10) 5 