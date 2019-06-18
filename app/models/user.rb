class User < ApplicationRecord
	validates :firstname, presence: true
	validates :lastname, presence: true
	validates :email, presence: true
	has_many :addresses
	has_many :orders
end
