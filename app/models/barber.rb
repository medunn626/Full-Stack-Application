# frozen_string_literal: true

class Barber < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :customers, through: :appointments
end
