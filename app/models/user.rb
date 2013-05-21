class User < ActiveRecord::Base
  has_many :competitions 
  has_many :events, :through => :competitions
  
  authenticates_with_sorcery!
  attr_accessible :password, :password_confirmation, :crypted_password, :salt
  attr_accessible :username, :email, :name, :phone, :event_ids
  
  validates_confirmation_of :password
end
