# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: 'Tom')
user2 = User.create(name: 'Alice')

<<<<<<< HEAD
pet1 = Pet.create(name:'Rover', species: 'dog', user: user1)
pet2 = Pet.create(name:'Susie', species: 'cat', user: user2)
=======
pet1 = Pets.create(name:'Rover', species: 'dog', user: user1)
pet2 = Pets.create(name:'Susie', species: 'cat', user: user2)
>>>>>>> f1cf1a1625043b8ca0b247f8ac9ffb07fa3bf2e3

