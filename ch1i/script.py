#!/usr/bin/env python3

from vigenere import encrypt, decrypt, random_key

text = "joint photographic experts group"
code = "jaime"

print()

encrypted_text = encrypt(text, code)
print(f"Encrypted text: {encrypted_text}")

inp = input("Vigenere key: ")

decrypted_text = decrypt(encrypted_text, inp)
print(f"Decrypted text: {decrypted_text}")

if inp == code:
    print("true")
else:
    print("false")

print()
