class ChangeDiary < ActiveRecord::Migration[5.2]
  def change
    add_column :diaries, :myself_id, :integer, null: false
    add_column :diaries, :other_id, :integer
  end
end
