# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Skill.destroy_all
Project.destroy_all
Hobby.destroy_all

5.times do
  Skill.create!(name: Faker::Zelda.unique.item,
                experience: Random.rand(1..10))
end

6.times do
  hobby = Hobby.create!(name: Faker::LordOfTheRings.unique.location,
                description: Faker::Hobbit.unique.quote)
end

6.times do
  Project.create!(name: Faker::GameOfThrones.unique.character,
                  description: Faker::GameOfThrones.unique.quote,
                  repo_link: Faker::Internet.unique.url,
                  deployment_link: Faker::Internet.unique.url )
end
