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
    username: "cooluser1",
    email: "cooluser1@coolness.com",
    password: "password",
    avatar: File.new("db/seed_images/accounts/CoolUser1.png")
  },
  {
    username: "sweetdude2",
    email: "sweetdude2@dudeness.com",
    password: "password",
    avatar: File.new("db/seed_images/accounts/SmoothDude2.jpg")
  },
  {
    username: "lefty",
    email: "lefty@fail.ca",
    password: "failure",
    avatar: File.new("db/seed_images/accounts/Lefty.jpg")
  },
  {
    username: "spacelordemperor",
    email: "altaleb@space.com",
    password: "mondospiffy",
    avatar: File.new("db/seed_images/accounts/SpaceLordEmperor.jpg")
  },
  {
    username: "jordan",
    email: "jordan@bass.com",
    password: "secretguitarist",
    avatar: File.new("db/seed_images/accounts/Jordan.jpg")
  },
  {
    username: "talor",
    email: "talor@guitar.com",
    password: "secretbassist",
    avatar: File.new("db/seed_images/accounts/Talor.jpg")
  },
  {
    username: "jeff",
    email: "jeffrey@hechlertime.com",
    password: "sotakeoffallyourclothes",
    avatar: File.new("db/seed_images/accounts/Jeff.jpg")
  },
  {
    username: "russell",
    email: "blacksmith@state.ma.us",
    password: "blacksmith",
    avatar: File.new("db/seed_images/accounts/Russell.jpg")
  },
  {
    username: "leah",
    email: "leah@hailswebzine.com",
    password: "iamnorwegian",
    avatar: File.new("db/seed_images/accounts/Leah.png")
  },
  {
    username: "barackobama",
    email: "barryhusseinsoetoro@kenya.ke",
    password: "allahuakbar",
    avatar: File.new("db/seed_images/accounts/BarackObama.jpg")
  }
])

# ALL LISTINGS

Listing.create([
  {
    name: "left sock",
    description: "smells a bit funky",
    account_id: 1,
    photo: File.new("db/seed_images/listings/LeftSock.jpg")
  },
  {
    name: "right sock",
    description: "smells a bit country",
    account_id: 1,
    photo: File.new("db/seed_images/listings/RightSock.jpg")
  },
  {
    name: "middle sock",
    description: "smells a bit rock and roll",
    account_id: 1,
    photo: File.new("db/seed_images/listings/MiddleSock.jpg")
  },
  {
    name: "bruh",
    description: "yeah bruh",
    account_id: 2,
    photo: File.new("db/seed_images/listings/Bruh.jpg")
  },
  {
    name: "Fail",
    description: "War is not diplomacy.",
    account_id: 3,
    photo: File.new("db/seed_images/listings/Fail.jpg")
  },
  {
    name: "Lars",
    description: "Please god take him before he kills again.",
    account_id: 3,
    photo: File.new("db/seed_images/listings/Lars.jpg")
  },
  {
    name: "Shoehorn",
    description: "War IS diplomacy (you know I am right.)",
    account_id: 4,
    photo: File.new("db/seed_images/listings/Shoehorn.jpg")
  },
  {
    name: "Utilikilt",
    description: "For utilities and weddings.",
    account_id: 4,
    photo: File.new("db/seed_images/listings/Utilikilt.png")
  },
  {
    name: "Bass",
    description: "Someday I will have a guitar.",
    account_id: 5,
    photo: File.new("db/seed_images/listings/Bass.jpg")
  },
  {
    name: "Rival Ranch",
    description: "Talor suxxx",
    account_id: 5,
    photo: File.new("db/seed_images/listings/RivalRanch.jpg")
  },
  {
    name: "Guitar",
    description: "Someday I will have a bass.",
    account_id: 6,
    photo: File.new("db/seed_images/listings/Guitar.jpg")
  },
  {
    name: "Leonberger",
    description: "OMG SO CUDDLY",
    account_id: 6,
    photo: File.new("db/seed_images/listings/Leonberger.jpg")
  },
  {
    name: "Peter Hechler",
    description: "We're a juggalo-themed web app. Of course you can trade siblings here.",
    account_id: 7,
    photo: File.new("db/seed_images/listings/PeterHechler.jpg")
  },
  {
    name: "Half-eaten French Toast",
    description: "They worked really hard on this.",
    account_id: 7,
    photo: File.new("db/seed_images/listings/HalfEatenFrenchToast.png")
  },
  {
    name: "Platinum Funk",
    description: "Taste it. Feel it.",
    account_id: 7,
    photo: File.new("db/seed_images/listings/PlatinumFunk.png")
  },
  {
    name: "Happy Meal",
    description: "Balled up.",
    account_id: 7,
    photo: File.new("db/seed_images/listings/HappyMeal.jpg")
  },
  {
    name: "Steel",
    description: "I forged this.",
    account_id: 8,
    photo: File.new("db/seed_images/listings/Steel.jpg")
  },
  {
    name: "Mead",
    description: "I also forged this.",
    account_id: 8,
    photo: File.new("db/seed_images/listings/Mead.jpg")
  },
  {
    name: "Paneer",
    description: "A sweet fat kitty.",
    account_id: 8,
    photo: File.new("db/seed_images/listings/Paneer.jpg")
  },
  {
    name: "Guns",
    description: "My 2nd Amendment rights.",
    account_id: 9,
    photo: File.new("db/seed_images/listings/Guns.png")
  },
  {
    name: "Murderer husband",
    description: "He killed a bunch of people.",
    account_id: 9,
    photo: File.new("db/seed_images/listings/MurdererHusband.jpg")
  },
  {
    name: "Nothing",
    description: "All your liberty are belong to me.",
    account_id: 10,
    photo: File.new("db/seed_images/listings/Nothing.jpg")
  }
])

# ALL BIDS

Bid.create([
  {
    buyer_listing_id: 5,
    seller_listing_id: 7,
  },
  {
    buyer_listing_id: 20,
    seller_listing_id: 22,
  },
  {
    buyer_listing_id: 21,
    seller_listing_id: 18,
  },
  {
    buyer_listing_id: 14,
    seller_listing_id: 19,
  },
  {
    buyer_listing_id: 3,
    seller_listing_id: 4,
  },
  {
    buyer_listing_id: 2,
    seller_listing_id: 22,
  },
  {
    buyer_listing_id: 1,
    seller_listing_id: 22,
  },
  {
    buyer_listing_id: 1,
    seller_listing_id: 5,
  },
  {
    buyer_listing_id: 2,
    seller_listing_id: 8,
  },
  {
    buyer_listing_id: 2,
    seller_listing_id: 12,
  },
  {
    buyer_listing_id: 9,
    seller_listing_id: 8,
  }
  ])
