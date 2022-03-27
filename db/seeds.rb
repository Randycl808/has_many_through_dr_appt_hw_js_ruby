# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



#seeds file for db:reset if needed
Appointment.destroy_all
Doctor.destroy_all
User.destroy_all

#Creates Doctors
Doctor.create(name:'Dr. Adam Brooks', description:'Brain Surgeon')
Doctor.create(name:'Dr. Roger Pyne', description:'Knee Surgeon')
Doctor.create(name:'Dr. Nick Green', description:'Eye Surgeon')


#Doctors could also be a doctors assistant (Physician Assistant)
Doctor.create(name:'PA-C Mike Smith', description:'Asst. Brain Surgeon')
Doctor.create(name:'PA-C Tim Parker', description:'Asst. Knee Surgeon')
Doctor.create(name:'PA-C Adriana Hernandez', description:'Asst. Eye Surgeon')


#Creates Users (Doctors clients)
User.create(name:'Randy Clements')
User.create(name:'Angelina Smith')
User.create(name:'Diego Hernendez')


#Creates Appointments (With User and Doctor)
Appointment.create(time:1030, user_id:1, doctor_id:1)
Appointment.create(time:1100, user_id:1, doctor_id:3)
Appointment.create(time:1145, user_id:2, doctor_id:1)
Appointment.create(time:1200, user_id:2, doctor_id:2)
Appointment.create(time:1245, user_id:3, doctor_id:2)


#lists Doctors, Users, and Appointments length
puts "Doctors size: #{Doctor.all.length}"
puts "Users size: #{User.all.length}"
puts "Appointments size: #{Doctor.all.length}"


#lists Users appointment
puts "First Users Appointment: #{User.first.appointments}"


#lists Users doctors
puts "First Users Doctors: #{User.first.doctors}"








