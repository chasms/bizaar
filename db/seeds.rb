# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Account.create([
  {
    username: "CoolUser1",
    email: "cooluser1@coolness.com",
    password: "password"
  },
  {
    username: "SweetDude2",
    email: "sweetdude2@dudeness.com",
    password: "password"
  },
])

Listing.create([
  {
    name: "left sock",
    description: "smells a bit funky",
    account_id: 1
  },
  {
    name: "left sock",
    description: "smells a bit funky",
    account_id: 1
  },
  ])
