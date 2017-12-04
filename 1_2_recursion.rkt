#lang sicp

;; 1.2 Linear Recursion

(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))

;; Warning: super slow
(define (fib-slow n)
  (cond
    ((= n 0) 0)
    ((= n 1) 1)
    (else (+ (fib-slow (- n 1)) (fib-slow (- n 2))))))

; (factorial 8)
; (fib-slow 8)

(define (A x y)
  (display x)
  (newline)
  (display y)
  (newline)
  (newline)
  (cond ((= y 0) 0)
((= x 0) (* 2 y))
((= y 1) 2)
(else (A (- x 1) (A x (- y 1))))))

(A 4 3)