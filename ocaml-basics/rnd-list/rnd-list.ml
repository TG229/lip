let rec rnd_list n b = if n > 0 then (
    [((Random.int b) + 1)] @ rnd_list (n-1) b
  ) else (
    []
  );;

rnd_list 100 10 ;;