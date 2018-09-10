
;Question: The good-enough? test used in
;computing squareroots will not be very effective
;for finding the square rootsof very small numbers.
;Also, in real computers, arithmetic operations
;are almost always performed with limited precision.
;This makes ourtest inadequate for very large numbers.
;Explain these statements, with examples showing how
;the test fails for small and large numbers.
;An alternative strategy for implementing good-enough?
;is to watch how guess changes from one iteration to
;the next and to stop when the change is a very small
;fraction of the guess. Design a square-root procedure
;that uses this kind of end test. Does this work better
;for small and large numbers?

;Solution:

;For small values, the approximations would end too
;early because 0.0001 would be relatively larger than
;value

;For big values, it would take a long time to terminate
;because 0.0001 would be too small compared to the number
;or could not even terminate if the value goes beyond the
;machine's floating point precision

; Testing the sqrt procedure in the text
(sqrt 700000000000000000) ; Runs infintely for very large numbers
(sqrt 0.000000006) ; Terminates too early at 0.03125006393747391,
answer is 0.00007745966

; implementing the new good-enough procedure
(define new-good-enough? (guess x)
  (
   
   )
  )

