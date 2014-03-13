class Group < ActiveRecord::Base 
  belongs_to :group_users 
  has_many :users, through: :group_users
  
  attr_accessible :age, :city, :county, :course, :day, :group_size, :handicap, :time_frame, :title, :email, :owner_id


  def self.search(search)
    if search
      find(:all, :conditions => ['title iLIKE ? OR day iLIKE ? OR course iLIKE ? OR city iLIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      find(:all)
    end
  end

end

