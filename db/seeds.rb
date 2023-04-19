# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Package.destroy_all
puts "deleting packages"
ActiveRecord::Base.connection.execute('ALTER SEQUENCE packages_id_seq RESTART WITH 1')
puts "id sequence restarted with 1"

cosmetic_surgery = Package.create!(
  package_name: "Cosmetic Surgery",
  package_description: "For many patients the Omega (mini) bypass is an effective option to the standard gastric bypass surgery. Thereby is the Omega (mini) bypass not far different from the Roux-en-Y gastric bypass method. A mini bypass in the Turkey will help you to reduce weight, because the intake of food will be restricted. Even the appetite will be controlled by a change in the enteric flora",
  package_price: 3750
)
puts "package cosmetic surgery created"

weight_loss_surgery = Package.create!(
  package_name: "Weight Loss Surgery",
  package_description: "For many patients the Omega (mini) bypass is an effective option to the standard gastric bypass surgery. Thereby is the Omega (mini) bypass not far different from the Roux-en-Y gastric bypass method. A mini bypass in the Turkey will help you to reduce weight, because the intake of food will be restricted. Even the appetite will be controlled by a change in the enteric flora",
  package_price: 4750
)
puts "package weight loss surgery created"

dental_treatment = Package.create!(
  package_name: "Dental Treatment",
  package_description: "For many patients the Omega (mini) bypass is an effective option to the standard gastric bypass surgery. Thereby is the Omega (mini) bypass not far different from the Roux-en-Y gastric bypass method. A mini bypass in the Turkey will help you to reduce weight, because the intake of food will be restricted. Even the appetite will be controlled by a change in the enteric flora",
  package_price: 5750
)
puts "package dental treatment created"
