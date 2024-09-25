(= (find-multiples $x $multiples)
   (if (>= $x 50) 
       $multiples
       (if (and (== (% $x 3) 0) (== (% $x 5) 0))
           (find-multiples (+ $x 1) (:: $x $multiples))
           (find-multiples (+ $x 1) $multiples)
        )
           
   )
)

;Start finding multiples from x = 0 with an empty list
(= (compute-start) (find-multiples 0 ()))
! (compute-start)