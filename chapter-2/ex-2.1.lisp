Question:

Define a better version of make-rat that handles both positive and negative arguments. Make-rat should normalize the sign so that if the rational number is positive, both the numerator and denominator are positive, and if the rational number is negative, only the numerator is negative.


Answer:

(define (make-rat n d)
  (cond ((and (< n 0) (< d 0)) (cons (* -1 n) (* -1 d)))
        ((and (> n 0) (< d 0)) (cons (* -1 n) (* -1 d)))
        (else (cons n d))))
