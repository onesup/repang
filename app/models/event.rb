class Event < ActiveRecord::Base
  has_many :competitions 
  has_many :users, :through => :competitions
  
  attr_accessible :finished_at, :livere_code, :started_at, :status, :title, :image_url
end
