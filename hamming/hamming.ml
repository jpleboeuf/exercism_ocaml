type nucleotide = A | C | G | T

let hamming_distance ns_left ns_right =
  if List.length ns_left <> List.length ns_right then
    if       List.length ns_left == 0 then
      Error "left strand must not be empty"
    else if List.length ns_right == 0 then
      Error "right strand must not be empty"
    else
      Error "left and right strands must be of equal length"
   else Ok
    (List.length
      (List.filter
        (fun np -> ((fst np) <> (snd np)))
        (List.combine ns_left ns_right)
       )
     )
  ;;

