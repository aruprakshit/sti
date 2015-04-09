class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :transports, :through => :taggings, source: :vehicle
end
