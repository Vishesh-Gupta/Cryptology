#lang racket

;; External PAckages

(require math/number-theory)
(require racket/include)

;; Reads a number from the user for `p`
(define p (read))

;; Reads a number from the user for `q`
(define q (read))

;; Creates n
(define n (* p q))

;; Creates m
(define m (* (sub1 p) (sub1 q)))

;; Public-Key
;; (public-key f m) produces the public-key as per RSA encryption
;; public-key: 2 predefined value

(define e (random-prime m))

;; Private-Key
;; (private-key e m) produces the private-key as per RSA encryption
;; private-key: Nat Nat -> Nat

(define private-key (modular-inverse e m))

(define (encryption msg)
  (modular-expt msg e n))

(define (decryption cipher)
  (modular-expt cipher private-key n))