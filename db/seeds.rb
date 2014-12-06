# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'faker'

100.times do |t|
  test = Test.create!(name: Faker::Name.name, registration_deadline: Faker::Date.forward(23), test_date: Faker::Date.forward(23))

end