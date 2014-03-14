# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


100.times do

  randgroup = Group.create(
    :min_age => rand(16..35),
    :max_age => rand(36..75),
    :city => Faker::Address.city.slice(0..25),
    :county => Faker::Address.uk_county.slice(0..25),
    :course => Faker::Address.city.slice(0..25),
    :day => ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"].sample,
    :group_size => rand(2..4),
    :min_handicap => rand(-10..4),
    :max_handicap => rand(5..20),
    :time_frame => ["Morning", "Mid-day", "Afternoon"],
    :title => Faker::DizzleIpsum.words.first.slice(0..64)
    )


end