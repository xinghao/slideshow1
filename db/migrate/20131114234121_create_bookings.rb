class CreateBookings < ActiveRecord::Migration
  def change
    drop_table :bookings
    create_table :bookings do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :from
      t.string :to
      t.string :date_of_departure
      t.string :date_of_return
      t.integer :number_of_passangers
      t.string :seat_class
      t.string :travel_type
      # t.boolean :is_return, default: true
      # t.boolean :is_mulit, default: false
      t.timestamps
    end
  end
end


