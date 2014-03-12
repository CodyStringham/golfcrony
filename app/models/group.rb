class Group < ActiveRecord::Base
  has_and_belongs_to_many :users
  attr_accessible :age, :city, :county, :course, :day, :group_size, :handicap, :time_frame, :title, :email

  def self.search(search)
    if search
      find(:all, :conditions => ['title iLIKE ? OR day iLIKE ? OR course iLIKE ? OR city iLIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      find(:all)
    end
  end

end

