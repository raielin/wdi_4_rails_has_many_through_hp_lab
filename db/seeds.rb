# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

House.delete_all
Student.delete_all



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
  ["Harry Potter", 15, House.find_by(name: 'Gryffindor').id],
  ["Ron Weasley", 16, House.find_by(name: 'Ravenclaw').id],
  ["Hermoine Granger", 14, House.find_by(name: 'Gryffindor').id],
  ["Heather Murphy", 15, House.find_by(name:'Gryffindor').id],
  ["Neville Longbottom", 16, House.find_by(name: 'Hufflepuff').id],
  ["Draco Malfoy", 15, House.find_by(name: 'Slytherin').id]
]

students_list.each do |student_name, age, house_id|
  Student.create(name: student_name, age: age, house_id: house_id)
end

# spells_list = [
#   "Accio"
#   "Aguamenti"
#   "Expelliarmus"
#   "Incendio"
#   "Levicorpus"
#   "Lumos"
#   "Muffliato"
#   "Oculus Reparo"
#   "Obliviate"
#   "Petrificus Totalus"
#   "Portus"
#   "Protego"
# ]

# spells_list.each do |spell|
#   Spell.create(spell_name: spell)
# end

# courses_list = [
#   "Charms"
#   "Dark Arts"
#   "Defense Against the Dark Arts"
#   "Flying"
#   "Herbology"
#   "History of Magic"
#   "Potions"
#   "Transfiguration"
#   "Ancient Runes"
#   "Arithmancy"
#   "Care of Magical Creatures"
#   "Apparition"
# ]

# courses_list.each do |course|
#   Course.create(course_name: course)
# end
