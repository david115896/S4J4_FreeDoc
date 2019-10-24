class Specialty < ApplicationRecord
	has_many :link_specialties
	has_many :doctors, through: :link_specialties
end
