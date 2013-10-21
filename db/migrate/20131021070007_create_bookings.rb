class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :first_name
      t.string :surname
      t.string :place_of_origin
      t.string :email
      t.boolean :accept_call
      t.string :phone
      t.string :message
      t.timestamps
    end
  end
end
