class CreateIsoCountries < ActiveRecord::Migration
  def change
    create_table :iso_countries do |t|
      t.string :iso_name
      t.string :iso
      t.string :iso3
      t.string :name
      t.integer :numcode
      t.timestamps
    end
  end
end
