class User < ApplicationRecord
#User has multiple appointments
#User has multiple doctors through scheduled appointments
  has_many :appointments
  has_many :doctors, through: :appointments
end
