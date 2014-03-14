class Group < ActiveRecord::Base 
  belongs_to :group_users 
  has_many :users, through: :group_users
  
  attr_accessible :min_age, :max_age, :city, :county, :course, :day, :group_size, :min_handicap, :max_handicap, :time_frame, :title, :email, :owner_id


  def self.simplesearch(search)
    if search
      find(:all, :conditions => ['title iLIKE ? OR day iLIKE ? OR course iLIKE ? OR city iLIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      find(:all)
    end
  end

end

