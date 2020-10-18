class ChangeImage < ActiveRecord::Migration[5.2]
  def change
    remove_reference :images, :diaries, null: false, foreign_key: true
    add_reference :images, :diary, null: false, foreign_key: true
  end
end
