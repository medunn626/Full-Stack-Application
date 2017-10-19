# frozen_string_literal: true

class BarberSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone, :shop_name, :zip, :services, :max_price, :busiest_day, :busiest_time, :average_rating
end
