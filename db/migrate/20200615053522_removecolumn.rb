class Removecolumn < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :sign_id, :integer, null: false

    add_column :profiles, :blood_type_id, :integer, null: false
  end
end
