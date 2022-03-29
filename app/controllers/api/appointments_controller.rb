class Api::AppointmentsController < ApplicationController

  
 
  def all_data
      render json:  {doctors: Doctor.all, 
                    user: User.all, 
                    appointments: Appointment.all}
  end

  #finds all Appointments in DB
  def index 
      render json: Appointment.all
  end

 #finds specific Appointment in DB
 #doesn't work (not needed)
 def show 
  render json: @appointment
end

#creates a Appointment in DB
def create
  appointment = Appointment.new(appointment_params)
  if(appointment.save)
    render json: appointment
  else
    render json: {errors: appointment.errors.full_messages}, status: 422
  end
end

#updates a Appointment in DB (edit)
def update
  @appointment = Appointment.find(params[:id])
  if(@appointment.update(appointment_params))
    render json: @appointment
  else
    render json: {errors: @appointment.errors.full_messages}, status: 422
 end
end

#deletes a Appointment in DB
def destroy
  @appointment = Appointment.find(params[:id])
  render json: @appointment.destroy
end

private
#function that allows @appointment to find specific appointment
def set_appointment
  @appointment = Appointment.find(params[:id])
end

#function for doctors that requires a name AND description to create a doctor for DB
#must require a doctor name AND description to work
def appointment_params
  params.require(:appointment).permit(:time, :doctor_id, :user_id)
end
end
