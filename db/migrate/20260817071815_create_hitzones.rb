class CreateHitzones < ActiveRecord::Migration[7.0]
  def change
    create_table :hitzones do |t|
      t.references :monster_variant, null: false, foreign_key: true
      t.string :part_name
      t.integer :slash
      t.integer :blunt
      t.integer :shot
      t.integer :fire
      t.integer :water
      t.integer :thunder
      t.integer :dragon
      t.integer :ice
      t.integer :stun

      t.timestamps
    end
  end
end
