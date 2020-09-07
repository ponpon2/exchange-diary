class CreateDiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :diaries do |t|
      t.date :today
      t.string :text

      t.timestamps
    end
  end
end
