class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.text :action
      t.string :schedule
      t.integer :habit_id
      t.timestamps
    end
  end
end
