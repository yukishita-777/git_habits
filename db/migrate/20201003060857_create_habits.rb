class CreateHabits < ActiveRecord::Migration[5.2]
  def change
    create_table :habits do |t|
      t.integer :user_id
      t.string :title
      t.text :purpose
      t.text :reason
      t.timestamps
    end
  end
end
