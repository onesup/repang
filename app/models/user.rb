class User < ActiveRecord::Base
  has_many :competitions 
  has_many :events, :through => :competition
  
  authenticates_with_sorcery!
  attr_accessible :username, :email, :password, :password_confirmation, :crypted_password, :salt, :created_at, :updated_at
  
  validates_confirmation_of :password
end
