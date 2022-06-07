puts "Destroy old services"
Booking.destroy_all
Service.destroy_all
User.destroy_all

puts "Creating new users"
user11 = User.create!(email: "teste11@gmail.com", password: "123456" )
user22 = User.create!(email: "teste22@gmail.com", password: "123456" )
user33 = User.create!(email: "teste33@gmail.com", password: "123456" )
user44 = User.create!(email: "teste44@gmail.com", password: "123456" )
user55 = User.create!(email: "teste55@gmail.com", password: "123456" )
user66 = User.create!(email: "teste66@gmail.com", password: "123456" )
user77 = User.create!(email: "teste77@gmail.com", password: "123456" )
user88 = User.create!(email: "teste88@gmail.com", password: "123456" )
user99 = User.create!(email: "teste99@gmail.com", password: "123456" )

puts "Making new services..."
service1 = Service.create!(
  title: "Jardinagem 101",
  description: "I can trim your plants",
  category: "Maintenance",
  address: "Rua do Conde de Redondo, 11, Lisboa",
  price: 15,
  user: user11,
)

service2 = Service.create!(
  title: "Boleia para vizinhos",
  description: "Ofereço boléias no meu trajeto para o trabalho",
  category: "Other",
  address: "Av. Almirante Reis, 22, Lisboa",
  price: 30,
  user: user22,
)

service3 = Service.create!(
  title: "Troca de resistência",
  description: "Posso trocar a resistência dos chuveiros elétricos, tenho ferramentas, basta comprar a resistência.",
  category: "Repairing",
  address: "Av. Marquês de Pombal, 33, Lisboa",
  price: 25,
  user: user33,
)

service4 = Service.create!(
  title: "Aulas de Inglês",
  description: "Melhore a sua pronúncia!",
  category: "Education",
  address: "Av. Marquês de Pombal, 44, Lisboa",
  price: 15,
  user: user44,
)

service5 = Service.create!(
  title: "Imposto de renda",
  description: "Basta levantar os documentos necessários",
  category: "Financial",
  address: "Av. Marquês de Pombal, 55, Lisboa",
  price: 13,
  user: user55,
)

service6 = Service.create!(
  title: "Acompanhante de running",
  description: "Faço companhia na corrida",
  category: "Sport",
  address: "Av. Marquês de Pombal, 66, Lisboa",
  price: 11,
  user: user66,
)

service77 = Service.create!(
  title: "Faço encomendas de Pastel de Nata",
  description: "Pacotes de 10 pastéis",
  category: "Food",
  address: "Av. Marquês de Pombal, 77, Lisboa",
  price: 100,
  user: user77,
)

service88 = Service.create!(
  title: "Fotografias profissionais",
  description: "Faço fotos profissionais para perfil do LinkedIn",
  category: "Entertainment",
  address: "Av. Marquês de Pombal, 88, Lisboa",
  price: 24,
  user: user88,
)

service99 = Service.create!(
  title: "Aplico injeções",
  description: "Sou enfermeira, aplico medicações LEGAIS via injeção",
  category: "Health Care",
  address: "Av. Marquês de Pombal, 99, Lisboa",
  price: 37,
  user: user99,
)

service99 = Service.create!(
  title: "Babysitting",
  description: "Tomo conta de crianças há 20 anos por períodos curtos",
  category: "Social Care",
  address: "Av. Marquês de Pombal, 99, Lisboa",
  price: 40,
  user: user99,
)
