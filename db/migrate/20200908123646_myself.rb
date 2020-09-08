class Myself < ActiveRecord::Migration[5.2]
  def change
    add_column :diaries, :myself_id, :integer, foreign_key: true
    add_column :diaries, :other_id, :integer, foreign_key: true
  end
end
