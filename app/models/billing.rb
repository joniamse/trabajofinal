class Billing < ApplicationRecord
	has_one :home
	has_many :carts
end
