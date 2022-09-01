class CreateKlasses < ActiveRecord::Migration[7.0]
  def change
    create_table :klasses do |t|
      t.string :name
      t.integer :hit_die

      t.timestamps
    end
  end
end
