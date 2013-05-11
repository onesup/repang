class Event < ActiveRecord::Base
  attr_accessible :finished_at, :livere_code, :started_at, :status, :title, :image_url
end
