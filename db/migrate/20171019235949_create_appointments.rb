# frozen_string_literal: true

class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.references :customer, foreign_key: true
      t.references :barber, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end
