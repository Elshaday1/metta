(= (digit $n)
    (if (> $n 10)
        (+ (% $n 10) (digit (/ (- $n (% $n 10)) 10)))
        $n
    )
)

(= (power $x $y) 
    (if (<= $y 0) 1
        (* $x (power $x (- $y 1)))
    )
)

!(digit (power 2 15))