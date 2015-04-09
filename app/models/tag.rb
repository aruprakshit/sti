class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :transports, :through => :taggings, source: :vehicle
  has_many :cars, -> { where(type: 'Car') }, through: :taggings, source: :vehicle
  has_many :vans, -> { where(type: 'Van') }, through: :taggings, source: :vehicle
end
