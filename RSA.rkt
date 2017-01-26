;;*************************RSA Cryptology*************************;;

;;***************************Full Racket**************************;;
#lang racket

;;***************************Packages*****************************;;
(require math/number-theory)

;;***************************Algorithm****************************;;
(define p (read))
(define q (read))
(define n (* p q))
(define m (* (sub1 p) (sub1 q)))
(define e (local
            (define (public-keygen m)
              (cond
                [(= (gcd (random-prime m) m)) (list (random-prime m) n)]
                [else (public-keygen m)])))
  (public-key m))


  (define (private-key e m)
    (modular-inverse e m))

  (define msg (read))
  (define RSA-encryptor
    (modulo (expt msg e) n))
  (RSA-encryptor)

  (define cipher-text (read))
  (define (RSA-decryptor)
    (modulo (expt cipher-text (private-key e m)) n))
  RSA-decryptor