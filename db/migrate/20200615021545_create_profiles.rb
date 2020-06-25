class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :bloodtype
      t.integer :brith
      t.integer :day

      t.timestamps
    end
  end
end
