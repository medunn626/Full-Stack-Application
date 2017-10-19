class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :zip
      t.string :services
      t.integer :max_price
      t.string :best_day
      t.time :best_time

      t.timestamps
    end
  end
end
