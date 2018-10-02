# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Product.destroy_all
# Order.destroy_all

20.times do |index|
  Product.create!(name: "Lute", price: 3000, condition: "excellent", maker: "Hans Frei", model: "Frei Pearl", tuning: "d-minor", finish: "shellac and wax", category: "Lute", sub_category: "Baroque", image: "lute.jpg", second_image: "lute2.jpg", third_image: "lute3.jpg", description: "Good instrument, plays nice, I don't play it anymore. Needs a good home. Feel free to ask any questions about it.", made_in: "USA", year: 1998, shipping: 75)
end

10.times do |index|
  User.create!(email: Faker::Internet.free_email, password: "password", superadmin_role: true, rating: Faker::Number.between(1, 5), location: "USA", joined: "2014", maker: true)
end

User.create!( email: "admin@admin.com", password: "password", superadmin_role: true )
User.create!( email: "visor@visor.com", password: "password", supervisor_role: true )
User.create!( email: "test@test.com", password: "password", user_role: true )

User.create!( email: "maker@maker.com", password: "password", supervisor_role: true, joined: '2014', maker: true)


# 30.times do |index|
#   Product.create!(name: Faker::Food.fruits,
#     cost: Faker::Number.non_zero_digit,
#     origin: "Mexico")
# end
#
# Product.all.each do |product|
#     60.times do |index|
#       product.reviews.create!(author: Faker::Name.name, content: Faker::Lorem.sentence(20),
#       rating: Faker::Number.between(1, 5),
#       product_id: Product.all.shuffle[0].id)
#   end
# end

p "Created #{Product.count} products"
p "Created #{User.count} users"
