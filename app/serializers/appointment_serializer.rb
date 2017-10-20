# frozen_string_literal: true

class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date
  has_one :customer
  has_one :barber
end
