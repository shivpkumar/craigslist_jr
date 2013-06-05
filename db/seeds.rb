require 'faker'

#Create categories
Category.create(name: 'Community')
Category.create(name: 'Housing')
Category.create(name: 'ForSale')
Category.create(name: 'Pets')
Category.create(name: 'Jobs')
Category.create(name: 'Services')

#create posts for 6 categories
6.times do |index|
  20.times do 
    Post.create(name: Faker::Lorem.word,
                description: Faker::Lorem.paragraph,
                email: Faker::Internet.email,
                price: rand(500),
                category_id: index+1)
  end 
end
