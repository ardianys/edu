# Import the Faker gem
require 'faker'

# Create a new user
User.create(
  email: "admin@edu.com",
  password: "password",
  password_confirmation: "password",
  name: "Admin",
  role: "ADMIN"
)

User.create(
  email: "user@edu.com",
  password: "password",
  password_confirmation: "password",
  name: "User",
  role: "USER"
)

# Create a new campaign
10.times do
  Campaign.create(
    title: Faker::Marketing.buzzwords,
    picture: Faker::Placeholdit.image(size: "50x50"),
    content: Faker::Lorem.paragraph(sentence_count: 10),
    total: Faker::Number.between(from: 1_000_000, to: 5_000_000),
    target: Faker::Number.between(from: 100_000_000, to: 500_000_000),
    close_at: Faker::Date.forward(days: 360)
  )
end

Campaign.all.each do |campaign|
  campaign.picture.attach( io: File.open(Rails.root.join('db/data/images/pict.jpeg')), filename: 'pict.jpeg')
end

3.times do
  Category.create(
    title: Faker::Book.genre
  )
end

puts "Seeds generated successfully!"