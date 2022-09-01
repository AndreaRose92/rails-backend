class CreateRaces < ActiveRecord::Migration[7.0]
  def change
    create_table :races do |t|
      t.string :name
      t.integer :speed
      t.string :languages
      t.string :size
      t.string :traits
      t.string :ability_bonuses

      t.timestamps
    end
  end
end
