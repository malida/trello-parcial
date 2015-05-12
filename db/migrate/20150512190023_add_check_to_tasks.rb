class AddCheckToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :check, :boolean
  end
end
