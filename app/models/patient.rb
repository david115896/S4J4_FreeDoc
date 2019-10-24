class Patient < ApplicationRecord
	has_many :appointments		#Patient a une relaton 1-N avec city et une relation N-N avec Doctor
	has_many :doctors, through: :appointments
	belongs_to :city
end
