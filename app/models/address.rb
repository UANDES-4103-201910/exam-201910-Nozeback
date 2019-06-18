class Address < ApplicationRecord
	validates :phone, presence: true 
	validates :phone, length: (9.. 12)
	validates :addressline1, presence: true 
	validates :addressline1, length: (2.. 50)
	validates :addressline2, presence: true 
	validates :addressline2, length: (2.. 50)
	validates :city, presence: true 
	validates :city, length: (2.. 50)
	validates :country, presence: true 
	validates :country, length: (3.. 50)
	validates :zipcode, presence: true 
	validates :zipcode, length: (4.. 9)
  belongs_to :user
end
