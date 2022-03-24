;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname cv1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (plocha-kruhu r) (* 3.14 (* r r)))
(plocha-kruhu 10)

(define (prepona a b) (sqrt(+ (* a a) (* b b))))
(prepona 4 3)

(define (pravouhly a b c) (equal? (prepona a b) c))
(pravouhly 3 4 5)
(pravouhly 3 4 6)

(define (C->F celsius) (+ (* celsius (/ 9 5)) 32))
(C->F 20)

(define(F->C fahrenheit) (* (- fahrenheit 32) (/ 5 9)))
(F->C 68)

(define(skorocele? N) ( < (abs (- (round N) N)) 0.001))
(skorocele? 7.99)
(skorocele? 7.9999)
(skorocele? -7.99)
(skorocele? -7.9999)

(define(obdelnik a b)(list (* a b) (+ (* 2 a) (* 2 b))))
(obdelnik 2 5)

(define(obdelnik2 a b)(cons (* a b) (cons (+ (* 2 a) (* 2 b)) '())))
(obdelnik2 2 5)