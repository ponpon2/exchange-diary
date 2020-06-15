class AddSignToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :sign, :string
  end
end
