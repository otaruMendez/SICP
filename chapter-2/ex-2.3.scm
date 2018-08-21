(define (create-point x y) (cons x y))

(define (create-rectangle rect-start-point-x rect-start-point-y width height)
  (cons (create-point rect-start-point-x rect-start-point-y) (cons width height)))

(define (get-height rectangle)
  (cdr (cdr rectangle)))

(define (get-width rectangle)
  (car (cdr rectangle)))

(define (rect-area rectangle)
  (* (get-height rectangle) (get-width rectangle)))

(define (rect-perimeter rectangle)
  (* 2 (+ (get-height rectangle) (get-width rectangle))))

(define test-rect (create-rectangle 2 3 5 9))

(rect-area test-rect)
(rect-perimeter test-rect

)
