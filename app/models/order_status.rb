class OrderStatus < ApplicationRecord
	validates :name , presence: true
	validates :name , length: { 2..50 }
	has_many :orders
end
