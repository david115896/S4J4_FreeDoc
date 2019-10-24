class Doctor < ApplicationRecord
	has_many :appointments			#doctor est relie a city en relation 1-N et a patients et specialties en relation N-N
	has_many :patients, through: :appointments
	belongs_to :city
	has_many :link_specialties
	has_many :specialties, through: :link_specialties
end
