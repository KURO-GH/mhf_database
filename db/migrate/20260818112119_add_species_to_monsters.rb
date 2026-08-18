class AddSpeciesToMonsters < ActiveRecord::Migration[7.0]
  def change
    add_column :monsters, :species, :string
  end
end
