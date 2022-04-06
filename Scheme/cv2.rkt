;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname cv2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Vrátí druhý prvek seznamu
(define (lsecond L) (first (rest L)))
(lsecond '(1 2 3 4 5))
;; Vrátí poslední prvek seznamu
(define (last L) (first (reverse L)))
(last '(1 2 3 4 5))
;; Vrátí seznam bez posledního prvku
(define (lastcdr L) (reverse (rest (reverse L))))
(lastcdr '(1 2 3 4 5))
;;Vrátí seznam bez druhého prvku
(define (skipsecond L) (cons (first L) (rest (rest L))))
(skipsecond '(1 2 3 4 5))
;;Prohodí prvky dvouprvkového seznamu
(define (swap1 L) (cons (first (rest L)) (cons (first L) '())))
(swap1 '(1 2))
(define (swap2 L) (list (first (rest L)) (first L)))
(swap2 '(1 2))
(define (swap3 L) (append (rest L) (cons (first L) '())))
(swap3 '(1 2))
;;Testuje zda je číslo dělitené 2 i 3
(define (mod23? N)
   (and
    (= 0 (modulo N 3))
    (= 0 (modulo N 2))
    ))
(mod23? 6)
(mod23? 7)
;;Vrací x omezená na interval
(define (limiter min x max)
  (cond
   [(< x min) min]
   [(> x max) max]
   [else x]
  )
)
(limiter 0 19 100)
(limiter 0 -5 100)
(limiter 0 250 100)
;;Verze 2 bez podmínek
(define (limit mini x maxi) (min (max mini x) maxi))
(limit 0 19 100)
(limit 0 -5 100)
(limit 0 250 100)
;;Testuje zda prvky seznamu jsou sudé
(define (suda? L)
  (cond
    [(null? L) (error 'suda? "Empty list")]
    [else (sudatest? L)]
    )
  )

(define (sudatest? L)
  (cond
    [(null? L) #t] 
    [(even? (first L)) (suda? (rest L))]
    [else #f]
    )
  )
(suda? '(2 4 6 8 10))
(suda? '(2 4 6 9 10))
(suda? '())