# frozen_string_literal: true

class Customer < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :barbers, through: :appointments
  has_one :user
end
