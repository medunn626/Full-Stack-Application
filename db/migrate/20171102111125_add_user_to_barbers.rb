class AddUserToBarbers < ActiveRecord::Migration[5.1]
  def change
    add_reference :barbers, :user, foreign_key: true
  end
end
