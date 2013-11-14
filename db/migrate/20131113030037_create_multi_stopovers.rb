class CreateMultiStopovers < ActiveRecord::Migration
  def change
    create_table :multi_stopovers do |t|
      t.integer :booking_id
      t.string :from
      t.string :to
      t.string :date
      t.timestamps
    end
    add_index :multi_stopovers, :booking_id
  end
end
