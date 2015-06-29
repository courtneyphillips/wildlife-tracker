class AddTypeIdToSpecies < ActiveRecord::Migration
  def change
    add_column :species, :type_id, :integer
    remove_column :types, :species_id
  end
end
