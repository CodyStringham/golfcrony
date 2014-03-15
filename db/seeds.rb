# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


100.times do

  randgroup = Group.create(
    :avg_age => rand(16..75),
    :city => ["Alta","Bluffdale","Cottonwood Heights","Draper","Herriman","Holladay","Midvale","Murray","Riverton","Sandy","Salt Lake City","South Jordan","South Salt Lake","Taylorsville","West Jordan","West Valley City","Alpine","American Fork","Cedar Fort Town","Cedar Hills","Draper","Eagle Mountain","Elk Ridge","Highland","Lehi","Lindon","Mapleton","Orem","Payson","Pleasant Grove","Provo","Salem","Santaquin","Saratoga Springs","Spanish Fork","Springville","Vineyard Town","Woodland Hills"].sample,
    :county => ["Salt Lake", "Utah"].sample,
    :course => Faker::Address.city.slice(0..25),
    :day => ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"].sample,
    :group_size => rand(2..4),
    :avg_handicap => rand(-10..40),
    :time_frame => ["Morning", "Mid-day", "Afternoon"].sample,
    :title => Faker::DizzleIpsum.words.first.slice(0..40)
    )


end


