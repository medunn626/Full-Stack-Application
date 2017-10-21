# frozen_string_literal: true

class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :users
  has_one :customer
  has_one :barber
end
