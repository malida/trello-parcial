class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :hours
      t.date :start_time
      t.date :end_time
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
