(=(fibonacci $n)
    (if (<= $n 1)
        $n
        (+ (fibonacci (- $n 1)) (fibonacci (- $n 2)) )       
    )
)

!(fibonacci 6)  


(= (fibo $acc $p $n)
    (if (> (+ $n $p) 4000000)
        $acc
        (if (== 0 (% (+ $n $p) 2))
            (fibo (+ (+ $n $p) $acc) $n (+ $n $p))
            (fibo $acc $n (+ $n $p))
        )
)
)
! (fibo 2 1 2)