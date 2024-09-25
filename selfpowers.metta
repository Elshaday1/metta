(= (self-power $base $exp)
    (if (> $exp 1)
        (* $base (self-power $base (- $exp 1)))
        $base
    )
)
! (self-power 5 5)

(= (sp $n)
    (if (> $n 990)
        (+ (self-power $n $n) (sp (- $n 1)))
        0
    )
)



!(sp 1000)

