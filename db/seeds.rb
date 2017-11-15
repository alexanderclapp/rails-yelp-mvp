# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
category = ["chinese", "italian", "japanese", "french", "belgian"]

10.times do
  restaurants_attributes = [
    {
      name:         Faker::RickAndMorty.character,
      address:      Faker::RickAndMorty.location,
      phone_number: Faker::PhoneNumber.subscriber_number(11),
      category:     category.sample
    }
  ]
  Restaurant.create(restaurants_attributes)
end

puts 'Creating reviews...'
Review.destroy_all
restaurant = Restaurant.all
10.times do
reviews_attributes = [
    {
      content:     Faker::ChuckNorris.fact,
      rating:      [0,1,2,3,4,5].sample,
      restaurant:  restaurant.sample
    }
  ]
Review.create(reviews_attributes)
end

