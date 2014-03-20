class Friendship < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  # validates_presence_of :user_id, :group_id
  def self.request(group, user)
    f1 = new(:group => group, :user => user, :status => "pending")
    f2 = new(:group => user, :user => group, :status => "requested")
    transaction do
      f1.save
      f2.save
    end
  end
end 