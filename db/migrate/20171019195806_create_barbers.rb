# frozen_string_literal: true

class CreateBarbers < ActiveRecord::Migration[5.1]
  def change
    create_table :barbers do |t|
      t.string :name
      t.string :phone
      t.string :shop_name
      t.string :zip
      t.string :services
      t.integer :max_price
      t.string :busiest_day
      t.time :busiest_time
      t.decimal :average_rating

      t.timestamps
    end
  end
end
