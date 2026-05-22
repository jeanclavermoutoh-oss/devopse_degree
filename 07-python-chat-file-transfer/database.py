import sqlite3

connection = sqlite3.connect('chat.db')

cursor = connection.cursor()

cursor.execute('''
CREATE TABLE IF NOT EXISTS messages (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT,
    message TEXT
)
''')

connection.commit()
connection.close()
