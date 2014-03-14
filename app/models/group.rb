class Group < ActiveRecord::Base
  belongs_to :owners
  has_many :users 

  attr_accessible :age, :city, :county, :course, :day, :group_size, :handicap, :time_frame, :title, :email


  def self.simplesearch(search)
    if search
      find(:all, :conditions => ['title iLIKE ? OR day iLIKE ? OR course iLIKE ? OR city iLIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      find(:all)
    end
  end

end

