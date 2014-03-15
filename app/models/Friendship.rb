class Friendship < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  # validates_presence_of :user_id, :group_id
  def self.request(user, friend)
    f1 = new(:user => group, :friend => friend, :status => "pending")
    f2 = new(:user => friend, :friend => user, :status => "requested")
    transaction do
      f1.save
      f2.save
    end
  end
end 