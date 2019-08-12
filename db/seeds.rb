# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
Product.destroy_all
Review.destroy_all

50.times do |index|
  @product = Product.create!(
    name: Faker::Food.ingredient,
    cost: Faker::Number.within(range: 1..5),
    origin: Faker::Address.country)
  rand(1..15).times do |index|
      @reviews = @product.reviews.create!(
        author: Faker::Name.name,
        content_body: Faker::Lorem.characters(number: 50),
        rating: Faker::Number.within(range: 1..5)
      )
    end
  end

  p "Created #{Review.count} review"
