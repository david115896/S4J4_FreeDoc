class Appointment < ApplicationRecord
	belongs_to :doctor	#appointment est relie a doctor, patient, city et specialty en relation 1-N
	belongs_to :patient
	belongs_to :city
	belongs_to :specialty
end
