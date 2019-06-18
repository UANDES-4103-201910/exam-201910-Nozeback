class OrderItem < ApplicationRecord
	validates :quanttity , presence: true ,numericality: { only_integer: true, greater_than: 0 }
  	belongs_to :product
  	belongs_to :order
end
