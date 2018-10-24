# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Pet.destroy_all
Like.destroy_all
user1 = User.create(name: 'Tom')
user2 = User.create(name: 'Alice')

pet1 = Pet.create(name:'Rover', species: 'dog', user_id: user1.id, likes: 4)
pet2 = Pet.create(name:'Susie', species: 'cat', user_id: user2.id, likes: 4)

like1 = Like.create(liker_id: Pet.first.id, liked_id: Pet.last.id)