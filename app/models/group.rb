class Group < ActiveRecord::Base 
  has_many :friendships
  has_many :users, through: :friendships
  belongs_to :owner, class_name: User
  
  attr_accessible :avg_age, :city, :county, :course, :day, :group_size, :avg_handicap, :time_frame, :title, :email, :owner_id, :owner_name

  def self.simplesearch(search)
    if search
      find(:all, :conditions => ['title iLIKE ? OR day iLIKE ? OR course iLIKE ? OR city iLIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      find(:all)
    end
  end

  

end

