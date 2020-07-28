class AddBirthToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :birth, :date
  end
end
