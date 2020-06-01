class User < ApplicationRecord
	has_many :homes

	validates :username, :password, :name, :surname, :phone, :email, presence: true
	validates :phone, numericality: true
	validates :password, length: { in: 6..20 }
	validates :email, confirmation: true
end
