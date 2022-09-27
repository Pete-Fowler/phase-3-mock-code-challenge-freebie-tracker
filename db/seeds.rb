require 'faker'

puts "Creating companies..."
Company.create(id: 1, name: "Google", founding_year: 1998)
Company.create(id: 2, name: "Facebook", founding_year: 2004)
Company.create(id: 3, name: "Dunder Mifflin", founding_year: 2002)
Company.create(id: 4, name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(id: 1, name: "Rick")
Dev.create(id: 2, name: "Morty")
Dev.create(id: 3, name: "Mr. Meseeks")
Dev.create(id: 4, name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
5.times do 
  Freebie.create(
    item_name: Faker::Name.name, 
    value: Faker::Number.between(from: 1, to: 10000000), 
    company_id: Faker::Number.between(from: 1, to: 4), 
    dev_id: Faker::Number.between(from: 1, to: 4)
  )
end

puts "Seeding done!"
