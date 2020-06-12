class Home < ApplicationRecord
	belongs_to :purchase

	validates :address, :postalcode, :country, :province, :location, :reference, presence: true
	validates :postalcode, numericality: true
end
