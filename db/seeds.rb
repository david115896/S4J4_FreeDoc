
require 'faker'

specialty_array = ["Addiction psychiatrist","Adolescent medicine specialist","Allergist (immunologist)","Anesthesiologist","Cardiac electrophysiologist","Cardiologist","Cardiovascular surgeon","Colon and rectal surgeon","Critical care medicine specialist","Dermatologist","Developmental pediatrician","Emergency medicine specialist","Endocrinologist","Family medicine physician","Forensic pathologist","Gastroenterologist","Geriatric medicine specialist","Gynecologist","Gynecologic oncologist","Hand surgeon","Hematologist"]


20.times do |num|    #creer 20 specialite medicale selon l'array ci-dessus
	spe = Specialty.create!(name: specialty_array[num])
end

20.times do  	#creer 20 villes 
	city = City.create!(zip_code: Faker::Address.zip)
end

100.times do |index|	
	
	doc = Doctor.create!(first_name: "Dr. #{Faker::Name.first_name}", last_name: Faker::Name.last_name, city: City.all.sample)   #creer 100 doctor et affecte une ville
	pat = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)		#creer 100 patients et affecte une ville
	
	3.times do 
		spe = LinkSpecialty.create(doctor: doc, specialty: Specialty.all.sample)		#creer 3 specialite pour chaque docteur
	end
	app = Appointment.create(doctor: doc, patient: Patient.all.sample, city: doc.city, specialty: LinkSpecialty.where(doctor: doc).sample.specialty, date: Faker::Time.forward(days: 23))  #creer un rendez-vous pour chaque docteur, avec la ville du docteur, avec un patient aleatoire, et une specialite du docteur 
end



puts "100 utilisateurs ont etes crees"

