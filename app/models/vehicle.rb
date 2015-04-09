class Vehicle < ActiveRecord::Base
  has_many :taggings
  has_many :tags, :through => :taggings

  scope :by_type, ->(type) { where(type: type) }
end
