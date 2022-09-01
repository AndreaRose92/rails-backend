class CreateKlassSpells < ActiveRecord::Migration[7.0]
  def change
    create_table :klass_spells do |t|
      t.integer :klass_id
      t.integer :spell_id

      t.timestamps
    end
  end
end
