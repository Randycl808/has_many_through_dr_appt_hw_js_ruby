class Doctor < ApplicationRecord
#Doctor has multiple appointments
#Doctor has multiple users through scheduled appointments
  has_many :appointments
  has_many :users, through: :appointments
end
