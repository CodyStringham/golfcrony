class JoinMessage < ActiveRecord::Base
  attr_accessible :body, :email, :name, :subject, :topic
end
