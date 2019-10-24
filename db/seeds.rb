# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

100.times do |index|
	doc = Doctor.create!(first_name: "Dr. #{Faker::Name.first_name}", last_name: Faker::Name.last_name, specialty: Faker::Doctor.specialty, zip_code: Faker::Address.zip)
	pat = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
	
	doc_rand = rand(1..index))
	pat_rand = rand (1..index)
	app = Appointment.create(doctor: Doctor.find(doc_rand), patient: Patient.find(pat_rand))
end



puts "100 utilisateurs ont etes crees"

