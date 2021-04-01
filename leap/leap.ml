let (%) a b =
    let rem = a mod b in
    if rem >= 0 then rem
    else rem + b
    ;;

let (%%) a b = (a % b) = 0;;

let (%~) a b = not (a %% b);;

let leap_year y =
    (y %% 4) && ((y %~ 100) || (y %% 400))
    ;;

