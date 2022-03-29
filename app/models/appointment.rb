class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor


  #lists appointments with the : time, user_id, and doctor_id
  def self.all_data
    appointments = self.all
    return apppointment.map do |appointment|
      {id: apppointment.id, time: apppointment.time, user:apppointment.user, doctor:apppointment.doctor}
  end
end
end
