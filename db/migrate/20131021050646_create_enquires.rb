class CreateEnquires < ActiveRecord::Migration
  def change
    create_table :enquires do |t|
      t.string :first_name
      t.string :email
      t.text :message
      t.timestamps
    end
  end
end
