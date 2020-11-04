require 'faker'
Faker::Config.locale = :fr


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin
#Users
adjectifs= %w[petit grand maigre gros chauve muscle intelligent parfait mediocre insupportable eblouissant valeureux]
10.times do
  first_name = Faker::Name.first_name
  
  User.create(first_name: first_name, last_name: Faker::Name.last_name, description: text, email: Faker::Internet.email, password: Faker::Hipster.word)  
end
=end

#for the random startdate
t1 = Time.parse("2020-11-04 14:40:34")
t2 = Time.parse("2022-01-01 00:00:00")


e = 
2.times do |x|
  Event.create(start_date: rand(t1..t2), duration: rand(5..100)*5, description: Faker::Lorem.paragraph_by_chars(number: 300, supplemental: false),location: Faker::Address.city,price: rand(1..1000),title: Faker::Book.title,admin_id: User.all.sample.id)
  
end
tp Event.all
