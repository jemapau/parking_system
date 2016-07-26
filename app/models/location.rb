class Location < ActiveRecord::Base
	validates :address, presence: true

	has_many :slots

	after_validation :geocode, if: ->(obj) { obj.address.present? && obj.address_changed?}
	geocoded_by :address
	reverse_geocoded_by :latitude, :longitude
end
