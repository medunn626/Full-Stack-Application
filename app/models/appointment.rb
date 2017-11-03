# frozen_string_literal: true

class Appointment < ApplicationRecord
  # belongs_to :customer, inverse_of: :appointments
  belongs_to :barber, inverse_of: :appointments
  belongs_to :user
end
