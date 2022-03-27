class Api::AppointmentsController < ApplicationController


  #finds all Appointments in DB
  def index 
      render json: Appointment.all
  end
end
