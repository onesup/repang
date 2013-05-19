class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :username, :email, :password, :crypted_password, :salt, :created_at, :updated_at
end
