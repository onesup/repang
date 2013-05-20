class Competition < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  attr_accessible :event_id, :message, :user_id
end
