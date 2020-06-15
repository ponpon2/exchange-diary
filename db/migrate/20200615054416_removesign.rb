class Removesign < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :sign_id_id
  end
end
