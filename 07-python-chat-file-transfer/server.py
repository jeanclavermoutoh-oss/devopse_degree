import socket
import threading

HOST = '0.0.0.0'
PORT = 5000

server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server.bind((HOST, PORT))
server.listen()

clients = []

print('Serveur démarré...')


def broadcast(message):
    for client in clients:
        client.send(message)


while True:
    client, address = server.accept()
    print(f'Connexion : {address}')

    clients.append(client)

    threading.Thread(target=lambda: broadcast(b'Nouvel utilisateur connecté')).start()
