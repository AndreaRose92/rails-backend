class CreateSpells < ActiveRecord::Migration[7.0]
  def change
    create_table :spells do |t|
      t.string :name
      t.string :range
      t.string :casting_time
      t.string :duration
      t.integer :level
      t.boolean :concentration
      t.boolean :ritual
      t.string :description

      t.timestamps
    end
  end
end
