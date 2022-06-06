puts "Destroy old services"
Booking.destroy_all
Service.destroy_all
User.destroy_all

puts "Creating new users"
user55 = User.create!(email: "teste@gmail.com", password: "123456" )
user66 = User.create!(email: "teste1@gmail.com", password: "123456" )

puts "Making new services..."
service1 = Service.create!(
  title: "Jardinagem 101",
  description: "I can trim your plants",
  category: "Jardinagem",
  address: "Rua do Conde de Redondo, 91B, Lisboa",
  price: 15,
  user: user55,
)

service2 = Service.create!(
  title: "Boleia para vizinhos",
  description: "Ofereço boléias no meu trajeto para o trabalho",
  category: "Boléia",
  address: "Av. Almirante Reis, 112, Lisboa",
  price: 30,
  user: user66,
)

service3 = Service.create!(
  title: "Troca de resistência",
  description: "Posso trocar a resistência dos chuveiros elétricos, tenho ferramentas, basta comprar a resistência.",
  category: "Eletricidade",
  address: "Av. Marquês de Pombal, 11, Lisboa",
  price: 25,
  user: user55,
)
