class RemovebrithFromProfiles < ActiveRecord::Migration[5.2]
  def change
    def up
      remove_column :profiles, :brith
      remove_column :profiles, :day
    end
  
    def down
      add_column :profiles, :brith, :integer
      add_column :profiles, :day, :integer
    end
  end
end
