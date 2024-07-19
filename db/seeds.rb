# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb

# db/seeds.rb
Airline.create([
  {
    name: "Air Peace",
    price: 350.00,
    location: "Nigeria",
    description: "Air Peace is one of the largest airlines in the world.",
    image: File.open(Rails.root.join('public', 'images', 'air-peace.webp'))
  },
  {
    name: "Delta Airlines",
    price: 450.00,
    location: "Atlanta",
    description: "Delta Airlines is known for its excellent customer service.",
    image: File.open(Rails.root.join('public', 'images', 'delta-airlines.jpg'))
  },
  {
    name: "United Airlines",
    price: 500.00,
    location: "Chicago",
    description: "United Airlines offers flights to numerous destinations worldwide.",
    image: File.open(Rails.root.join('public', 'images', 'united-airlines.webp'))
  },
  {
    name: "British Airways",
    price: 600.00,
    location: "London",
    description: "British Airways is a premium international airline.",
    image: File.open(Rails.root.join('public', 'images', 'british-airways.webp'))
  },
  {
    name: "Emirates",
    price: 700.00,
    location: "Dubai",
    description: "Emirates offers luxurious flights and exceptional service.",
    image: File.open(Rails.root.join('public', 'images', 'emirates.jpeg'))
  },
  {
    name: "Qatar Airways",
    price: 750.00,
    location: "Doha",
    description: "Qatar Airways is known for its outstanding in-flight experience.",
    image: File.open(Rails.root.join('public', 'images', 'qatar-airways.webp'))
  }
])
