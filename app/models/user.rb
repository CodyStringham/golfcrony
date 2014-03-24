class User < ActiveRecord::Base
  has_many :groups, through: :friendships
  has_many :friendships
  has_many :created_groups, class_name: Group, primary_key: :id, foreign_key: :owner_id
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable


  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :first_name, :last_name, :age, :handicap, :password, 
  :password_confirmation, :remember_me, :provider, :uid
  # attr_accessible :title, :body

  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
      user = User.where(:provider => auth.provider, :uid => auth.uid).first
      if user
        return user
      else
        registered_user = User.where(:email => auth.info.email).first
        if registered_user
          return registered_user
        else
          user = User.create(first_name:auth.extra.raw_info.first_name,
                              last_name:auth.extra.raw_info.last_name,
                              age:auth.extra.raw_info.age,
                              provider:auth.provider,
                              uid:auth.uid,
                              email:auth.info.email,
                              password:Devise.friendly_token[0,20],
                            )
        end    end
    end

end


