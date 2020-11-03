# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Users
adjectifs= %w[petit grand maigre gros chauve muscle intelligent parfait mediocre insupportable eblouissant valeureux]
10.times do
  text = "Je m'appelle #{first_name}, je suis #{adjectifs.sample} et mon livre préféré est #{Faker::Book.title}, je suis #{Faker::Name.title[:job].sample} "
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, descrption: text, email: Faker::Internet.email )
end