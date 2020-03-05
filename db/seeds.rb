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

Listing.create(name:"Nike React Element", color:"Red/black",size:12, price:100, description:"Not used, in very good condition", brand:Brand.find(1), category:"casual")