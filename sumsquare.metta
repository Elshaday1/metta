(= (square $x) (* $x $x))

(= (total_square_sum $x) (
    if (<= $x 0) 0
    (+ (square $x) (total_square_sum (- $x 1)))))

(= (sum $x) (
    if (<= $x 0) 0
    (+ $x (sum (- $x 1)))))

(= (difference $x) 
    (if (<= $x 0) 0
        (- (square (sum $x)) (total_square_sum $x))
    )
)

!(difference 10)