class Removecolumnn < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :bloodtype, :string
    remove_column :profiles, :sign, :string
  end
end
