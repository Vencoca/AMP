;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname cv3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct zbozi (nazev cena kusu))
(define sklad
  (list (make-zbozi "rohlik" 3 300)
        (make-zbozi "houska" 4 100)
        (make-zbozi "šunka" 20 30)))

(define (najdi-cenu jmeno seznam)
  (cond
    [(null? seznam) 0]
    [(equal? (zbozi-nazev (first seznam)) jmeno) (zbozi-cena (first seznam))]
    [else (najdi-cenu jmeno (rest seznam))]
   )
 )

(najdi-cenu "rohlik" sklad)

(define (celkova-hodnota seznam)
  (cond
    [(null? seznam) 0]
    [else (+
            (*
              (zbozi-cena (first seznam))
              (zbozi-kusu (first seznam))
             )
             (celkova-hodnota (rest seznam))
           )]
  )
)

(celkova-hodnota sklad)

(define (cena-objednavky objednavka sklad)
  (cond
    [(null? objednavka) 0]
    [else(+
          (*
           (najdi-cenu (first(first objednavka)) sklad)
           (first(rest(first objednavka)))
          )
          (cena-objednavky (rest objednavka) sklad)
          )
    ]
    )
 )

(cena-objednavky '(("meloun" 2)("jablko" 4)("rohlik" 5) ("houska" 2)) sklad)