class Api::DoctorsController < ApplicationController

    #defines the CRUD actions before using them
    before_action :set_doctor, only: [:show, :destroy, :update]

    #finds all Doctors in DB
    def index 
        render json: Doctor.all
    end
     
    #finds specific Doctor in DB
    def show 
        render json: @doctor
    end
    
    #creates a Doctor in DB
    def create
        doctor = Doctor.new(doctor_params)
        if(doctor.save)
          render json: doctor
        else
          render json: {errors: doctor.errors.full_messages}, status: 422
        end
    end
  
     #updates a Doctor in DB (edit)
     def update
        if(@doctor.update(doctor_params))
          render json: @doctor
        else
          render json: {errors: @doctor.errors.full_messages}, status: 422
       end
    end
  
    #deletes a Doctor in DB
    def destroy
        render json: @doctor.destroy
    end
  
    private
    #function that allows @doctor to find specific doctor
    def set_doctor
        @doctor = Doctor.find(params[:id])
    end
  
    #function for doctors that requires a name AND description to create a doctor for DB
    #must require a doctor name AND description to work
    def doctor_params
        params.require(:doctor).permit(:name, :description)
    end
end
