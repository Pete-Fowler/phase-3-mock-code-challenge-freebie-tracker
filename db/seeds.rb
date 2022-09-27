puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

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
