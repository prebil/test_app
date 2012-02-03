class User < ActiveRecord::Base
  attr_accessible :name, :email
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :name,  :presences => true,
                    :length    => { :maximum => 50 }
  validates :email, :presences  => true,
                    :format     => { :with => email_regex },
                    :uniqueness => { :case_senstive => false }
end
