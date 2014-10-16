# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

House.delete_all
Student.delete_all
Course.delete_all
Spell.delete_all


houses_list = [
  "Gryffindor",
  "Ravenclaw",
  "Hufflepuff",
  "Ravenclaw",
  "Slytherin"
]

houses_list.each do |house_name|
  House.create(name: house_name)
end

students_list = [
  ["Harry Potter", 15, "Gryffindor"],
  ["Ron Weasley", 16, "Gryffindor"],
  ["Hermoine Granger", 14, "Gryffindor"],
  ["Heather Murphy", 15, "Ravenclaw"],
  ["Neville Longbottom", 16, "Hufflepuff"],
  ["Draco Malfoy", 15, "Slytherin"]
]

students_list.each do |student_name, age, house|
  Student.create(name: student_name, age: age, house_id: House.find_by(name: house).id)
end

courses_list = [
  "Charms",
  "Dark Arts",
  "Defense Against the Dark Arts",
  "Flying",
  "Herbology",
  "History of Magic",
  "Potions",
  "Transfiguration",
  "Ancient Runes",
  "Arithmancy",
  "Care of Magical Creatures",
  "Apparition"
]

courses_list.each do |course|
  Course.create(course_name: course)
end

spells_list = [
  ["Accio", "Defense Against the Dark Arts", "Harry Potter"],
  ["Aguamenti", "Charms", "Ron Weasley"],
  ["Expelliarmus", "Defense Against the Dark Arts", "Heather Murphy"],
  ["Incendio", "Transfiguration", "Neville Longbottom"],
  ["Levicorpus", "Apparition", "Draco Malfoy"],
  ["Lumos", "Arithmancy", "Hermoine Granger"],
  ["Muffliato", "Dark Arts", "Draco Malfoy"],
  ["Oculus Reparo", "Ancient Runes", "Harry Potter"],
  ["Obliviate", "History of Magic", "Neville Longbottom"],
  ["Petrificus Totalus", "Care of Magical Creatures", "Harry Potter"],
  ["Portus", "Herbology", "Ron Weasley"],
  ["Protego", "Potions", "Hermoine Granger"]
]

spells_list.each do |spell, course, student|
  Spell.create(spell_name: spell, course_id: Course.find_by(course_name: course).id, student_id: Student.find_by(name: student).id)
end

