# RSA Algorithm

Very simple implementation of RSA encryption and descryption.

Usage

1. Enter a value for prime (P).
2. Enter a value for prime (Q).
3. A random public-key is generated for you and a corresponding private key.
4. Enter you message `(msg-cipher msg)`
5. You will be displayed with a cipher number.
6. To decode it, `(cipher-msg cipher)`.
7. Your real msg will be displayed.


Limitations
-----------
1. Currently the message has to be a number. I am figuring out a way to make the message a string.

Requests
--------
1. It would be an amazing thing if you could use large primes. Though I can fix primes but the first person encrypting the concepts hould be able to decide on the primes and its security.
