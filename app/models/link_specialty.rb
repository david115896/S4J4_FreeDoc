class LinkSpecialty < ApplicationRecord
	belongs_to :doctor 		#LinkSpecialty fait la relation N-N entre Doctor et Specialty
        belongs_to :specialty
end
