class Addcolumn < ActiveRecord::Migration[5.2]
  def change
    add_reference :profiles, :user, foreign_key: true, null: false
  end
end
