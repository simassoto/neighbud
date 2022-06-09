puts "Destroy old services"
Booking.destroy_all
Service.destroy_all
User.destroy_all

puts "Creating new users"
user11 = User.create!(first_name: "Sayonara", last_name: "Almeida", email: "teste11@gmail.com", password: "123456" )
user22 = User.create!(first_name: "Rodrigo", last_name: "Nóbrega", email: "teste22@gmail.com", password: "123456" )
user33 = User.create!(first_name: "Carlos", last_name: "Soto", email: "teste33@gmail.com", password: "123456" )
user44 = User.create!(first_name: "Diogo", last_name: "Telo", email: "teste44@gmail.com", password: "123456" )
user55 = User.create!(first_name: "Ricardo", last_name: "Silva", email: "teste55@gmail.com", password: "123456" )
user66 = User.create!(first_name: "Dom", last_name: "Henrique", email: "teste66@gmail.com", password: "123456" )
user77 = User.create!(first_name: "Miguelito", last_name: "Primeiro", email: "teste77@gmail.com", password: "123456" )
user88 = User.create!(first_name: "Raimundo", last_name: "Contoler", email: "teste88@gmail.com", password: "123456" )
user99 = User.create!(first_name: "Marta", last_name: "Nunes", email: "teste99@gmail.com", password: "123456" )

puts "Making new services..."
service1 = Service.create!(
  title: "Jardinagem 101",
  description: "I can trim your plants",
  category: "Maintenance",
  address: "Rua do Conde de Redondo, 11, Lisboa",
  price: 15,
  user: user11,
)
service11 = Service.create!(
  title: "Cleaning",
  description: "I clean houses and stores",
  category: "Maintenance",
  address: "Av. Almirante Reis, 112, Lisboa",
  price: 16,
  user: user11,
)
service111 = Service.create!(
  title: "Sewing services",
  description: "Small sewing services for normal clothes",
  category: "Maintenance",
  address: "Av. Almirante Reis, 122, Lisboa",
  price: 17,
  user: user11,
)

service1111 = Service.create!(
  title: "Plumbing and piping",
  description: "Small sewing services for normal clothes",
  category: "Repairing",
  address: "Av. da Liberdade, 22, Lisboa",
  price: 38,
  user: user11,
)

service11111 = Service.create!(
  title: "Car mechanics",
  description: "Small and quick car mechanics emergencies",
  category: "Repairing",
  address: "Av. da Liberdade, 42, Lisboa",
  price: 38,
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
service22 = Service.create!(
  title: "Carpintaria e marcenaria",
  description: "Troco portas, instalo rodapés e reparo móveis",
  category: "Repairing",
  address: "Av. da Liberdade, 73, Lisboa",
  price: 39,
  user: user22,
)
service222 = Service.create!(
  title: "Serviço de mesa",
  description: "Sirvo mesas em festas",
  category: "Other",
  address: "Av. da Liberdade, 93, Lisboa",
  price: 35,
  user: user22,
)
service2222 = Service.create!(
  title: "Aula de alongamento",
  description: "Para melhorar as suas dores na coluna",
  category: "Sports",
  address: "Av. da Liberdade, 113, Lisboa",
  price: 40,
  user: user22,
)
service22222 = Service.create!(
  title: "Eletricista",
  description: "Troca de fiação, luminárias e plugs",
  category: "Repairing",
  address: "Av. da Liberdade, 133, Lisboa",
  price: 30,
  user: user22,
)

service3 = Service.create!(
  title: "Troca de resistência",
  description: "Posso trocar a resistência dos chuveiros elétricos, tenho ferramentas, basta comprar a resistência.",
  category: "Repairing",
  address: "Av. Infante Santo, 33, Lisboa",
  price: 25,
  user: user33,
)
service33 = Service.create!(
  title: "Financial education tips",
  description: "Improve your savings by earning how to properly do it.",
  category: "Financial",
  address: "Av. Infante Santo, 43, Lisboa",
  price: 45,
  user: user33,
)

service333 = Service.create!(
  title: "Video edition",
  description: "Woking as a video making for 6 years.",
  category: "Entertainment",
  address: "Av. Infante Santo, 63, Lisboa",
  price: 34,
  user: user33,
)

service3333 = Service.create!(
  title: "Transporte de grupos",
  description: "Tenho carrinha grande e espaçosa para transportar grupos",
  category: "Other",
  address: "Av. Infante Santo, 63, Lisboa",
  price: 38,
  user: user33,
)

service33333 = Service.create!(
  title: "Aula de matemática",
  description: "Para estudantes das primeiras séries",
  category: "Education",
  address: "Av. Marquês de Pombal, 83, Lisboa",
  price: 44,
  user: user33,
)

service333333 = Service.create!(
  title: "Elderly people care",
  description: "Higienical care",
  category: "Health Care",
  address: "Av. Marquês de Pombal, 103, Lisboa",
  price: 65,
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

service44 = Service.create!(
  title: "Elderly people care",
  description: "Higienical care",
  category: "Health Care",
  address: "Av. Marquês de Pombal, 103, Lisboa",
  price: 65,
  user: user44,
)

service444 = Service.create!(
  title: "Transporte de grupos",
  description: "Tenho carrinha grande e espaçosa para transportar grupos",
  category: "Other",
  address: "Av. Infante Santo, 63, Lisboa",
  price: 38,
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

service55 = Service.create!(
  title: "Transporte de grupos",
  description: "Tenho carrinha grande e espaçosa para transportar grupos",
  category: "Other",
  address: "Av. Infante Santo, 63, Lisboa",
  price: 38,
  user: user55,
)

service555 = Service.create!(
  title: "Acompanhante de running",
  description: "Faço companhia na corrida",
  category: "Sports",
  address: "Av. Marquês de Pombal, 66, Lisboa",
  price: 11,
  user: user55,
)

service6 = Service.create!(
  title: "Acompanhante de running",
  description: "Faço companhia na corrida",
  category: "Sports",
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
