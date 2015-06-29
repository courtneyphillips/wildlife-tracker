class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.column :name, :string
      t.column :species_id, :integer
    end
  end
end
