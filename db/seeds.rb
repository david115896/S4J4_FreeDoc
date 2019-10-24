# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




require 'faker'
specialty_array = ["Addiction psychiatrist","Adolescent medicine specialist","Allergist (immunologist)","Anesthesiologist","Cardiac electrophysiologist","Cardiologist","Cardiovascular surgeon","Colon and rectal surgeon","Critical care medicine specialist","Dermatologist","Developmental pediatrician","Emergency medicine specialist","Endocrinologist","Family medicine physician","Forensic pathologist","Gastroenterologist","Geriatric medicine specialist","Gynecologist","Gynecologic oncologist","Hand surgeon","Hematologist"]


#20.times do |num|
#	spe = Specialty.create!(name: specialty_array[num])
#end
#
#20.times do 
#	city = City.create!(zip_code: Faker::Address.zip)
#end

100.times do |index|
	
	doc = Doctor.create!(first_name: "Dr. #{Faker::Name.first_name}", last_name: Faker::Name.last_name, city_id: City.all.sample.id)
	pat = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: City.all.sample.id)
	
	3.times do 
		spe = LinkSpecialties.create(doctor: doc.id, specialty: Specialty.all.sample.id)
	end
	app = Appointment.create(doctor: doc.id, patient: Patient.all.sample.id, date: Faker::Date.forward(days: 23), city: doc.city_id, specialty: LinkSpecialty.where(doctor_id: doc.id).sample.specialty.id)
end



puts "100 utilisateurs ont etes crees"

