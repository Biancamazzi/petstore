# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
User_cart.destroy_all
Services.destroy_all

puts 'Creating services...'

banho = Service.create!(
name: "Banho",
description: "Banho completo com os melhores produtos"
price: "15000"
)

tosa = Service.create!(
name: "Tosa",
description: "Tosa especializada para a raca do seu pet"
price: "20000"
)

passeio = Service.create!(
name: "Passeio",
description: "Passeio na rua por uma hora com nossos profissionais"
price: "5000"
)

daycare = Service.create!(
name: "Day Care",
description: "Creche com o melhor ambiente para o seu melhor amigo"
price: "30000"
)
puts "All done with services (4) - Banho, Tosa, Passeio, Daycare"
