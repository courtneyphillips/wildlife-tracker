class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.column :latitude, :integer
      t.column :longtitude, :integer
      t.column :species_id, :integer
      t.timestamps
    end
  end
end
