class Location < ActiveRecord::Base
	validates :address, presence: true, length: { maxinum: 255 }

	has_many :slots

	after_validation :geocode, if: ->(obj) { obj.address.present? && obj.address_change?}
	geocoded by :address
	reverse_geocoded by :latitude, :longitude
end
