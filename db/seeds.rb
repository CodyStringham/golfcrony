# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


10.times do

  project = Group.create(:age => "5", :city => "Salt Lake", :county => "Utah", :course => "Shit Course", :day => "Wednesday", :group_size => "4", :handicap => "7", :time_frame => "sure", :title => "Going Golfing")  
  project2 = Group.create(:age => "23", :city => "Provo", :county => "Salt Lake", :course => "Shit Course", :day => "Saturady", :group_size => "3", :handicap => "2", :time_frame => "hmmm", :title => "Lonely Golfer")
  project3 = Group.create(:age => "54", :city => "Orem", :county => "Salt Lake", :course => "Best", :day => "Wednesday", :group_size => "2", :handicap => "4", :time_frame => "sure", :title => "Get Bent")
  project4 = Group.create(:age => "15", :city => "Punani", :county => "Utah", :course => "Bluesky Vallies", :day => "Monday", :group_size => "1", :handicap => "1", :time_frame => "okay", :title => "Cool Beans!")

end