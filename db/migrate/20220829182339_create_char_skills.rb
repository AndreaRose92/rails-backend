class CreateCharSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :char_skills do |t|
      t.integer :character_id
      t.integer :skill_id
      t.integer :klass_id
      t.integer :race_id

      t.timestamps
    end
  end
end
