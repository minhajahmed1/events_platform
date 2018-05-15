class Post < ApplicationRecord
belongs_to :user
 geocoded_by :address
after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
reverse_geocoded_by :latitude, :longitude
after_validation :reverse_geocode

 
  has_many :rsvps
  has_many :users, through: :rsvps
  
  validates :name, presence: true

  
  



end
