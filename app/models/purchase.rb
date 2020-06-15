class Purchase < ApplicationRecord
	has_many :homes
	validates :payment, presence: true
end
