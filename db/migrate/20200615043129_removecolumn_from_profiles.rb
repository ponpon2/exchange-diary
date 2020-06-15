class RemovecolumnFromProfiles < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :brith, :integer
    remove_column :profiles, :day, :integer
  end
end
