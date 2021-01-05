User.destroy_all
Barber.destroy_all
Haircut.destroy_all
User.reset_pk_sequence
Barber.reset_pk_sequence
Haircut.reset_pk_sequence

u1 = User.create(name: Faker::Name.name, age: Faker::Number.between(from: 6, to: 70))
u2 = User.create(name: Faker::Name.name, age: Faker::Number.between(from: 6, to: 70))
u3 = User.create(name: Faker::Name.name, age: Faker::Number.between(from: 6, to: 70))
u4 = User.create(name: Faker::Name.name, age: Faker::Number.between(from: 6, to: 70))
u5 = User.create(name: Faker::Name.name, age: Faker::Number.between(from: 6, to: 70))


b1 = Barber.create(name: Faker::Name.name, hairstyle: "Fade")
b2 = Barber.create(name: Faker::Name.name, hairstyle: "Bowl Cut")
b3 = Barber.create(name: Faker::Name.name, hairstyle: "Mohawk")
b4 = Barber.create(name: Faker::Name.name, hairstyle: "Comb Over")
b5 = Barber.create(name: Faker::Name.name, hairstyle: "Pompadour")

Haircut.create(user_id: u1.id, barber_id: b1.id, rating: Faker::Number.digit)
Haircut.create(user_id: u2.id, barber_id: b2.id, rating: Faker::Number.digit)
Haircut.create(user_id: u3.id, barber_id: b3.id, rating: Faker::Number.digit)
Haircut.create(user_id: u4.id, barber_id: b4.id, rating: Faker::Number.digit)
Haircut.create(user_id: u5.id, barber_id: b5.id, rating: Faker::Number.digit)

