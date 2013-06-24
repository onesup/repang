class Event < ActiveRecord::Base
  has_many :competitions 
  has_many :users, :through => :competitions
  
  attr_accessible :finished_at, :livere_code, :started_at, :status, :title, :image_url, :thumbnail
  attr_accessible :facebook_description, :banner_image, :banner_link

  def self.last_event
    order("created_at DESC").first
  end
end
