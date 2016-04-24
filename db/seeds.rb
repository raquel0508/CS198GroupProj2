# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# make users
user1 = User.create(name: 'Simon Cao', email: 'testing@gmail.com', password: 'password')
user2 = User.create(name: 'Robert Norte', email: 'testing1@gmail.com', password: 'password')
user3 = User.create(name: 'Raquel Layug', email: 'testing2@gmail.com', password: 'password')

# make friends
# Friend.create(user_id: user1.id, friend_id: user2.id, is_pending: true)
# Friend.create(user_id: user1.id, friend_id: user3.id, is_pending: true)
# Friend.create(user_id: user2.id, friend_id: user1.id, is_pending: true)
# Friend.create(user_id: user2.id, friend_id: user3.id, is_pending: false)
# Friend.create(user_id: user3.id, friend_id: user1.id, is_pending: true)
# Friend.create(user_id: user3.id, friend_id: user2.id, is_pending: false)