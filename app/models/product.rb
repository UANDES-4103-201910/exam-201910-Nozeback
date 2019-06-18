class Product < ApplicationRecord
	validates :brand, presence: true
	validates :model, presence: true
	validates :price, presence: true, numericality: { only_integer: true, greater_than: 0 }
	validates :producttype, presence: true 
	validates :producttype, length: (2.. 50)
	validates :shortdesc, presence: true 
	validates :shortdesc, length: (10.. 50)
	validates :largedesc, presence: true
	validates :largedesc, length: (50.. 2000)
	has_many :order_items
end
