import random
import string


def generate_password(length=16):
    lowercase = string.ascii_lowercase
    uppercase = string.ascii_uppercase
    digits = string.digits
    symbols = string.punctuation

    all_characters = lowercase + uppercase + digits + symbols

    password = ''.join(random.choice(all_characters) for _ in range(length))

    return password


if __name__ == "__main__":
    length = int(input("Longueur du mot de passe : "))
    print("Mot de passe généré :", generate_password(length))
