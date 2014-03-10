class Group < ActiveRecord::Base
  belongs_to :owners
  has_many :users 

  attr_accessible :age, :city, :county, :course, :day, :group_size, :handicap, :time_frame, :title

  def self.search(search)
    if search
      find(:all, :conditions => ['title LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end

end

