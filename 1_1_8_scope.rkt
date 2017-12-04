#lang sicp

;; 1.1.7 Example: Square Roots by Newton’s Method


;; Constants
(define X 104562)
(define Y 1.0)
(define EPSILON 0.001)


;; Main iteration, takes a guess y for the square root of x and keeps on calling itself with better guesses until within epsilon.
(define (sqrt-iter x y)
  (if (good-enough? x y)
      y
      (sqrt-iter x (improve-guess x y))
      ))

;; Decides if current guess is within epsilon
(define (good-enough? x y)
  (< (abs (- x (* y y)))
      EPSILON))

;; Improves guess by averaging x and x/y
(define (improve-guess x y)
  (/ (+ y
        (/ x y))
     2))
;; Produces the absolute value of a (real) number.
(define (abs x)
  (cond
    ((= x 0) 0)
    ((< x 0) (- 0 x))
    ((> x 0) x))
  )
  

;; Function call
(sqrt-iter X Y)