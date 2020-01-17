#include <iostream>
#include <string>

template <class T>
T substitution_cipher(T message,  void *e) {
    T cipher{};
    for (&m: message) {
        cipher += e(m);
    }
    return cipher;
}
