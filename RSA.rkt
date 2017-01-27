;;*************************RSA Cryptology*************************;;
;;***************************Full Racket**************************;;
#lang racket
;;***************************Packages*****************************;;
(require math/number-theory)
(require racket/include)
;;***************************Algorithm****************************;;
(define p (read))
(define q (read))
(define n (* p q))
(define m (* (sub1 p) (sub1 q)))

;;Public-Key
;;(public key f m) produces the public-key as per RSA encryption
;;public-key: 2 predefined value
(define e (random-prime m))

;;Private-Key
;;(private-key e m) produces the private-key as per RSA encryption
;;private-key: Nat Nat -> Nat
(define private-key (modular-inverse e m))

(define (msg-cipher msg)
  (modular-expt msg e n))

(define (cipher-msg cipher)
  (modular-expt cipher private-key n))sc