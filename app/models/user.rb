# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  # has_many :examples
  has_one :customer
  has_many :appointments
end
