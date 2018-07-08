Question:

 Consider the problem of representing line segments in a plane. Each segment is represented as a pair of points: a starting point and an ending point. Define a constructor make-segment and selectors start-segment and end-segment that define the representation of segments in terms of points. Furthermore, a point can be represented as a pair of numbers: the x coordinate and the y coordinate. Accordingly, specify a constructor make-point and selectors x-point and y-point that define this representation. Finally, using your selectors and constructors, define a procedure midpoint-segment that takes a line segment as argument and returns its midpoint (the point whose coordinates are the average of the coordinates of the endpoints). To try your procedures, you’ll need a way to print points:
(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))


Answer:

(define (create-point x y) (cons x y))
(define (x-point point) (car point))
(define (y-point point) (cdr point))
(define (make-line-segment point1 point2) (cons point1 point2))
(define (start-segment segment) (car segment))
(define (end-segment segment) (cdr segment))

(define (join-line-segments line-segment)
  (cons
   (+
    (x-point (start-segment line-segment))
    (x-point (end-segment line-segment)))
   (+
    (y-point (start-segment line-segment))
    (y-point (end-segment line-segment))
    )))

(define (half value) (/ value 2))
(define (mid-point point) (cons (half (car point)) (half (cdr point))))

(define (mid-point point) (cons (half (x-point point)) (half (y-point point))))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))


Usage sample:

(define first-point (create-point 1 2))
(define second-point (create-point 1 3))
(define test-line-segment (make-line-segment first-point second-point))
(define single-line-segment-point (join-line-segments test-line-segment))
(print-point (mid-point single-line-segment-point))
