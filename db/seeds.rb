# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


brands = [
    "Nike","Adidas","Jordan","Reebok","Vans",
    "Converse","Under Armour","Puma","New Balance",
    "Sketchers","Johnston and Murphy","Bostonian",
    " Fila", "Lebron", "Testoni", "Berluti","Asics",
    "Tommy Hilfiger"
]

brands.each do |brand|

    Brand.create(name:brand)
    puts "#{brand} created"

end

User.create(email:"user1@yehey.com", password: "111111", name:"Kenneth")
User.create(email:"user2@yehey.com", password: "111111", name:"Longy")
User.create(email:"user3@yehey.com", password: "111111", name:"Master")
User.create(email:"user4@yehey.com", password: "111111", name:"Richard")
User.create(email:"user5@yehey.com", password: "111111", name:"Warrior")
User.create(email:"user6@yehey.com", password: "111111", name:"Boy")

puts "Users Created"

