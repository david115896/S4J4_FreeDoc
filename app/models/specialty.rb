class Specialty < ApplicationRecord
	has_many :link_specialties		#Specialty a une relation N-1 avec Appointment et une relation N-N avec Doctor
	has_many :doctors, through: :link_specialties
	has_many :appointments
end
