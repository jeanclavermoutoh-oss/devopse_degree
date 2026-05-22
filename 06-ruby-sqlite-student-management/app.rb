require 'sqlite3'

DB = SQLite3::Database.new 'school.db'
DB.results_as_hash = true

# ---------------------------
# INIT DATABASE SAFE
# ---------------------------
def init_db
  schema = <<-SQL
    CREATE TABLE IF NOT EXISTS students (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      fullname TEXT NOT NULL,
      classroom TEXT,
      grade TEXT
    );
  SQL

  DB.execute_batch(schema)
  puts "Base de données initialisée avec succès."
end

# ---------------------------
# CREATE STUDENT
# ---------------------------
def add_student
  print "Nom complet : "
  name = gets.chomp

  print "Classe : "
  classroom = gets.chomp

  print "Grade : "
  grade = gets.chomp

  DB.execute(
    "INSERT INTO students (fullname, classroom, grade) VALUES (?, ?, ?)",
    [name, classroom, grade]
  )

  puts "Étudiant ajouté avec succès."
end

# ---------------------------
# LIST STUDENTS
# ---------------------------
def list_students
  students = DB.execute("SELECT * FROM students")

  puts "\n--- LISTE DES ÉTUDIANTS ---"
  students.each do |s|
    puts "ID: #{s['id']} | #{s['fullname']} | #{s['classroom']} | Grade: #{s['grade']}"
  end
end

# ---------------------------
# MENU
# ---------------------------
def menu
  loop do
    puts "\n===== MENU PRINCIPAL ====="
    puts "1. Ajouter un étudiant"
    puts "2. Lister les étudiants"
    puts "3. Quitter"
    print "Choix : "

    choice = gets.chomp

    case choice
    when "1"
      add_student
    when "2"
      list_students
    when "3"
      puts "Au revoir."
      break
    else
      puts "Choix invalide."
    end
  end
end

# ---------------------------
# RUN APP
# ---------------------------
init_db
menu
