# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# services = Service.create([{name: 'servico1', description: 'teste1'}, {name: 'servico2', description: 'teste2'}])
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Service.destroy_all

puts 'Creating services...'

banho = Service.create!(
  name: "Banho",
  description: "Banho completo com os melhores produtos.",
  price_cents: 90,
  photo: 'https://facilitaseguros.com.br/wp-content/uploads/2021/06/banho-em-cachorro-saiba-qual-e-a-frequencia-ideal.jpg'
)

tosa = Service.create!(
name: "Tosa",
description: "Tosa especializada para a raca do seu pet.",
price_cents: 30,
photo: 'https://s2.glbimg.com/ar0iFvu386J7zYAeUdPt-feAaHk=/e.glbimg.com/og/ed/f/original/2021/07/29/banho-em-pet-cachorro-gato-toalha2.jpeg'
)

passeio = Service.create!(
name: "Passeio",
description: "Passeio na rua por uma hora com nossos profissionais.",
price_cents: 50,
photo: 'https://i0.wp.com/www.portaldodog.com.br/cachorros/wp-content/uploads/2020/04/lowsection-vista-de-uma-mulher-andando-com-seu-cachorro-no-parque_23-2147902106.jpg?resize=626%2C417&ssl=1'

)

daycare = Service.create!(
name: "Day Care",
description: "Nossa creche para cães, os cachorros vivem juntos e participam de várias brincadeiras e dinâmicas. Elas desenvolvem não só a socialização do cão, mas também seus lados sensorial, cognitivo e físico.",
price_cents: 100,
photo: 'https://images.squarespace-cdn.com/content/v1/559a9f66e4b0eb5f8388d19e/1443582895500-4X0H45FUUQI8HE0OH4SZ/estrutura.jpg?format=1000w'
)

acupultura = Service.create!(
  name: "Acupultura",
  description: "Nos cachorros e gatos ela pode servir para inúmeros benefícios, como ajudar com dores na coluna, locomoção, obesidade e muito mais.",
  price_cents: 120,
  photo: 'https://www.clickguarulhos.com.br/wp-content/uploads/2016/12/acup.jpg'
)

fisioterapia = Service.create!(
  name: "Fisioterapia",
  description: "A fisioterapia veterinária proporciona conforto e uma opção qualificada de recuperação para diversas enfermidades que outrora não conseguiam ser tratadas com a devida importância.",
  price_cents: 190,
  photo: 'https://wpets.com.br/wp-content/uploads/2022/04/9034-St.-Bernard-in-swimming-pool.jpg'
)

taxidog = Service.create!(
  name: "Taxi Dog",
  description: "Serviço especializado em transporte de animais de estimação para levá-los com toda segurança aos locais que você precisa.",
  price_cents: 60,
  photo: 'https://i.ytimg.com/vi/aWbV5Abpc5A/maxresdefault.jpg'
)

planosaude = Service.create!(
  name: "Plano de saúde",
  description: "O tutor paga uma mensalidade e, se o bichinho ficar doente ou se machucar, ele terá direito a alguns cuidados veterinários.",
  price_cents: 80,
  photo: 'https://www.vetquality.com.br/wp-content/uploads/2021/03/com-que-frequencia-levar-pet-no-veterinario.jpg'
)

massoterapia = Service.create!(
  name: "Massoterapia",
  description: "Atuam tanto no sistema muscular quanto no estado emocional do cão, e podem integrar um plano de tratamento corretivo ou preventivo. Dores musculares e sedentarismo são apenas algumas das indicações.",
  price_cents: 150,
  photo: 'https://minassal.com.br/wp-content/uploads/2021/02/dog-WS2L963.jpg'
)

puts "All done with services (4) - Banho, Tosa, Passeio, Daycare"
