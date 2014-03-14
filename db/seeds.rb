# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


100.times do

  randgroup = Group.create(
    :age => rand(16..75),
    :city => Faker::Address.city,
    :county => Faker::Address.uk_county,
    :course => Faker::Address.city,
    :day => ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"].sample,
    :group_size => rand(2..4),
    :handicap => rand(-10..20),
    :time_frame => ["Morning", "Afternoon"],
    :title => Faker::DizzleIpsum.words.first
    )


end