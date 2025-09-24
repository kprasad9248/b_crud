# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end



Book.create(name: "The Lost Kingdom", pages: 150, author: "Prasad", price: 250)
Book.create(name: "Magical World", pages: 100, author:"Durga", price: 300)
Book.create(name: "The World", pages: 200, author: "Vera", price: 500)
Book.create(name: "s-sri", pages: 50, author: "Vara", price: 100)
Book.create(name: "Death Day", pages: 100, author: "Venkata", price: 100)
Book.create(name: "Person", pages: 150, author: "Satya", price: 150)

