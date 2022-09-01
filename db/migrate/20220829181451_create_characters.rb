class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :level
      t.integer :klass_id
      t.integer :race_id
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.integer :hp
      t.integer :current_hp
      t.boolean :is_spellcaster
      t.integer :player_id

      t.timestamps
    end
  end
end
