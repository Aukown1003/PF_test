# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = [
  { name: 'testuser1', email: 'test1@yahoo.com', password: '111111' },
  { name: 'testuser2', email: 'test2@yahoo.com', password: '222222' },
  { name: 'testuser3', email: 'test3@yahoo.com', password: '333333' },
  { name: 'testuser4', email: 'test4@yahoo.com', password: '444444' },
  { name: 'testuser5', email: 'test5@yahoo.com', password: '555555' },
  ]
  users.each do |record|
    User.create!(record) unless User.find_by(email: record[:email])
  end