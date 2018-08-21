(define (sum_of_two x y) (+ x y))
(define (square x) (* x x))
(define (sum_of_squares x y) (sum_of_two (square x) (square y)))
(define (sum_of_squares_of_two_larger_numbers x y z) (cond ((and (< x y) (< x z)) (sum_of_squares y z))
                                                           ((and (< y x) (< y z)) (sum_of_squares x z))
                                                           ((and (< z y) (< z x)) (sum_of_sqaures x y))))
(sum_of_squares_of_two_larger_numbers 5 3 4)


