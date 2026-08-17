class CreateMonsterVariants < ActiveRecord::Migration[7.0]
  def change
    create_table :monster_variants do |t|
      t.references :monster, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
