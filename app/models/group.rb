class Group < ActiveRecord::Base 
  has_many :friendships
  has_many :users, through: :friendships
  
  attr_accessible :avg_age, :city, :county, :course, :day, :group_size, :avg_handicap, :time_frame, :title, :email, :owner_id

  def self.simplesearch(simplesearch)
    if simplesearch
      find(:all, :conditions => ['title iLIKE ? OR day iLIKE ? OR course iLIKE ? OR city iLIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      find(:all)
    end
  end

  

end

