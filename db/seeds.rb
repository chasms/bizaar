# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ALL ACCOUNTS

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
  {
    username: "Lefty",
    email: "lefty@fail.ca",
    password: "failure"
  },
  {
    username: "Space Lord Emperor",
    email: "altaleb@space.com",
    password: "mondospiffy"
  },
  {
    username: "Jordan",
    email: "jordan@bass.com",
    password: "secretguitarist"
  },
  {
    username: "Talor",
    email: "talor@guitar.com",
    password: "secretbassist"
  },
  {
    username: "Jeff",
    email: "jeffrey@hechlertime.com",
    password: "sotakeoffallyourclothes"
  },
  {
    username: "Russell",
    email: "russell@blacksmith.state.ma.us",
    password: "blacksmith"
  },
  {
    username: "Leah",
    email: "leah@hailswebzine.com",
    password: "iamnorwegian"
  },
  {
    username: "Barack Obama",
    email: "barryhusseinsoetoro@kenya.ke",
    password: "allahuakbar"
  },
])

# ALL LISTINGS

Listing.create([
  {
    name: "left sock",
    description: "smells a bit funky",
    account_id: 1
  },
  {
    name: "right sock",
    description: "smells a bit country",
    account_id: 1
  },
  {
    name: "middle sock",
    description: "smells a bit rock and roll",
    account_id: 1
  },
  {
    name: "bruh",
    description: "yeah bruh",
    account_id: 2
  },
  {
    name: "Fail",
    description: "War is not diplomacy.",
    account_id: 3
  },
  {
    name: "Lars",
    description: "Please god take him before he kills again.",
    account_id: 3
  },
  {
    name: "Shoehorn",
    description: "War IS diplomacy (you know I am right.)",
    account_id: 4
  },
  {
    name: "Utilikilt",
    description: "For utilities and weddings.",
    account_id: 4
  },
  {
    name: "Bass",
    description: "Someday I will have a guitar.",
    account_id: 5
  },
  {
    name: "Rival Ranch",
    description: "Talor suxxx",
    account_id: 5
  },
  {
    name: "Guitar",
    description: "Someday I will have a bass.",
    account_id: 6
  },
  {
    name: "Leonberger",
    description: "OMG SO CUDDLY",
    account_id: 6
  },
  {
    name: "Peter Hechler",
    description: "We're a juggalo-themed web app. Of course you can trade siblings here.",
    account_id: 7
  },
  {
    name: "Half-eaten French Toast",
    description: "They worked really hard on this.",
    account_id: 7
  },
  {
    name: "Platinum Funk",
    description: "Taste it. Feel it.",
    account_id: 7
  },
  {
    name: "Happy Meal",
    description: "Balled up.",
    account_id: 7
  },
  {
    name: "Steel",
    description: "I forged this.",
    account_id: 8
  },
  {
    name: "Mead",
    description: "I also forged this.",
    account_id: 8
  },
  {
    name: "Paneer",
    description: "A sweet fat kitty.",
    account_id: 8
  },
  {
    name: "Guns",
    description: "My 2nd Amendment rights.",
    account_id: 9
  },
  {
    name: "Murderer husband",
    description: "He killed a bunch of people.",
    account_id: 9
  },
  {
    name: "Nothing",
    description: "All your liberty are belong to me.",
    account_id: 10
  },
])
