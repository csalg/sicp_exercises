#lang racket

; Integer, Natural -> Integer
; Produces a to the nth power

  (define (pwr a n)
    (define currentOperation 0)
    (define (evenPwr y m)
      (if (= 2 m)
      (* y y)
      (begin
        (set! currentOperation (pwr y (/ m 2)))
        (* currentOperation currentOperation))))

    (if (= n 0)
        1
        (if (= (modulo n 2) 0)
            (begin
              (evenPwr a n))
            (* a (pwr a (- n 1))))))

; Natural -> Boolean
; Will return true if x is prime, but may return true in other cases (ex. 45)
(define (fermatLittle? x)
    (= (modulo (pwr (- x 1) x) x) (random (- x 1))))

(define startTS (current-milliseconds))
(fermatLittle? 120091)
(- (current-milliseconds) startTS)

(set! startTS (current-milliseconds))

(pwr 8 60)
(- (current-milliseconds) startTS)