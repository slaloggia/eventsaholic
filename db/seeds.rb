# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
10.times do
Client.create(username: Faker::Twitter.screen_name, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

Venue.create(name: "Logan Bar", location:'Logan Square' , capacity: 100 , type: "Bar")
Venue.create(name: "The Boiler Room" , location: "Logan Square" , capacity: 140 , type: "Restaurant" )
Venue.create(name: "East Room", location: "Logan Square"  , capacity: 120 , type:"Bar" )
Venue.create(name: "Fado Irish Pub", location: "River North" , capacity: 210, type:"Restaurant" )
Venue.create(name: "RPM Italian", location: "River North"  , capacity: 240 , type: "Restaurant")
Venue.create(name: 'Beatrix', location: "River North" , capacity: 155 , type: "Restaurant" )
Venue.create(name: 'Underground', location: 'River North' , capacity: 270 , type: "Club" )
Venue.create(name: 'Disco' , location:"River North"  , capacity: 310 , type:"Club" )
Venue.create(name: "Au Cheval", location: "West Side" , capacity: 260, type: "Restaurant" )
Venue.create(name: 'The Aviary', location: "West Side" , capacity: 150, type: "Bar")
Venue.create(name: "Formento's", location: "West Side" , capacity: 270, type: "Restaurant")



Vendor.create(name: "Ezcater", category: "Catering")
Vendor.create(name: "Zerocater", category: "Catering")
Vendor.create(name: "Blue Plate", category: "Catering")
Vendor.create(name: "J&L Catering", category: 'Catering')
Vendor.create(name: "Large Music", category: "Music")
Vendor.create(name: "Trala", category: "Music")
Vendor.create(name: "Geartrack", category: "Music")
Vendor.create(name: "A Posh Production", category: 'Decor')
Vendor.create(name: "Art Of Imagination", category: "Decor")
Vendor.create(name: "Revel Decor", category: "Decor")

puts "SEEDED"


