class RemoveCustomerFromAppointments < ActiveRecord::Migration[5.1]
  def change
    remove_reference :appointments, :customer, foreign_key: true
  end
end
