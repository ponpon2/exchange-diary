class Remove < ActiveRecord::Migration[5.2]
  def change
    drop_table :signs
    drop_table :blood_types
  end
end
