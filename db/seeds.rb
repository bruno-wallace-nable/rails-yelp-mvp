# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all

puts "Creating restaurants..."
restaurants = [
  { name: "Epicure", address: "75008 Paris", phone_number: "01 43 54 23 31", category: "french" },
  { name: "Sushimar", address: "Rua do Ouvidor, RJ", phone_number: "21 2222-3333", category: "japanese" },
  { name: "Mamma Mia", address: "Trastevere, Roma", phone_number: "+39 06 123456", category: "italian" },
  { name: "Le Petit Belge", address: "Bruxelas", phone_number: "+32 2 555 0000", category: "belgian" },
  { name: "Dragão Dourado", address: "Liberdade, SP", phone_number: "11 3333-4444", category: "chinese" }
]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created: #{restaurant.name}"
end

puts "Done! #{Restaurant.count} restaurants created."
