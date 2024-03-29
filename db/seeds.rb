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

Category.create(title: 'Pembangunan Masjid')
Category.create(title: 'Pendidikan')
Category.create(title: 'Yatim Piatu')
Category.create(title: 'Uang Riba')

# Create a new campaign
10.times do
  Campaign.create(
    category_id: Category.all.sample.id,
    title: Faker::Marketing.buzzwords,
    picture: Faker::Placeholdit.image(size: "50x50"),
    content: Faker::Lorem.paragraph(sentence_count: 10),
    total: Faker::Number.between(from: 1_000_000, to: 5_000_000),
    target: Faker::Number.between(from: 100_000_000, to: 500_000_000),
    close_at: Faker::Date.forward(days: 360)
  )
end

Campaign.all.each do |campaign|
  file = File.open(Rails.root.join('db', 'data', 'images', 'pict.jpeg'))
  campaign.update(picture: file)
end

# SPP

# Create a new SppBatch
(0..2).each do |year|
  SppBatch.create(
    start_at: Date.new(Date.today.year + year, 7, 1), # 1 juli 2024
    end_at: Date.new(Date.today.year + year + 1, 6, 30) # 30 juni 2025
  )
end

# Create a new SppStudent
SppBatch.all.each do |batch|
  20.times do
    SppStudent.create(
      spp_batch_id: batch.id,
      nis: Faker::Number.number(digits: 10),
      name: Faker::Name.name,
      gender: ['MALE', 'FEMALE'].sample,
      birth_at: Faker::Date.birthday(min_age: 12, max_age: 16),
      address: Faker::Address.street_address,
      pict: Faker::Placeholdit.image(size: "50x50"),
      father: Faker::Name.male_first_name,
      mother: Faker::Name.female_first_name,
      phone: Faker::PhoneNumber.phone_number,
      email: Faker::Internet.email
    )
  end
end

# Create a new SppCategory
SppCategory.create(title: "SPP")
SppCategory.create(title: "Pembangunan")
SppCategory.create(title: "Pendaftaran")
SppCategory.create(title: "Seragam")
SppCategory.create(title: "Zakat")

bendahara = User.create(
  email: "bendahara@luqmanulhakim.org",
  password: "password",
  password_confirmation: "password",
  name: "Bendahara",
  role: "BENDAHARA"
)

# Create a new SppInvoice
SppStudent.all.each do |student|
  SppCategory.all.each do |category|
    spp_invoice = SppInvoice.create(
      spp_student_id: student.id,
      spp_category_id: category.id,
      amount: Faker::Number.between(from: 1_000_000, to: 3_000_000),
      paid_amount: Faker::Number.between(from: 0, to: 1_000_000),
      status: ['NEW', 'PARTIAL', 'PAID'].sample
    )
    SppPayment.create(
      spp_batch_id: student.spp_batch_id, # data angkatan diambil dari data angkatan student
      user_id: bendahara.id, # bendahara yg menerima data pembayaran
      spp_student_id: student.id,
      spp_invoice_id: spp_invoice.id,
      tipe: ['CASH', 'TRANSFER'].sample,
      amount: Faker::Number.between(from: 100_000, to: 1_000_000),
      pay_at: Faker::Date.between(from: 2.days.ago, to: Date.today)
    )
  end
end

puts "Seeds generated successfully!"