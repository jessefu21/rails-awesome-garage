# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts "emptying database..."
Car.destroy_all
Owner.destroy_all


owner1 = Owner.create!(nickname: "Nova")
owner2 = Owner.create!(nickname: "Blaze")
owner3 = Owner.create!(nickname: "Thunderose")
owner4 = Owner.create!(nickname: "user7988")


Car.create!(brand: "Tesla", model: "Cybertruck", year: 2024, fuel: "Electric", owner: owner1)
Car.create!(brand: "Lamborghini", model: "Huracán EVO", year: 2023, fuel: "Gasoline", owner: owner2)
Car.create!(brand: "Ferrari", model: "488 Spider", year: 2021, fuel: "Gasoline", owner: owner3)
Car.create!(brand: "Lamborghini", model: "Huracán EVO", year: 2023, fuel: "Gasoline", owner: owner4)

puts "Done! #{Car.count} cars record created!"
