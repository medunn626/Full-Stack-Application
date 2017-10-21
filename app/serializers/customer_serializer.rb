# frozen_string_literal: true

class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :zip, :services, :max_price, :best_day, :best_time, :user_id
end
