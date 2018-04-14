class Post < ApplicationRecord
belongs_to :user
 geocoded_by :address
 after_validation :geocode, if: :address_changed?
 
  has_many :rsvps
  has_many :users, through: :rsvps

end
