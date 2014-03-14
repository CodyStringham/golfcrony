class friendship < ActiveRecord::Base
  belongs_to :crony, :class_name => "User", :foreign_key => "crony_id"
  belongs_to :groups
  validates_presence_of :user_id, :group_id
end 