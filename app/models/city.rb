class City < ApplicationRecord
	has_many :patients	#city est reliee a patients, doctors et appointments en relation N-1
	has_many :doctors
	has_many :appointments
end
