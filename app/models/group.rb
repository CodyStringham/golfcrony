class Group < ActiveRecord::Base
  attr_accessible :age, :city, :county, :course, :day, :group_size, :handicap, :time_frame, :title
end
