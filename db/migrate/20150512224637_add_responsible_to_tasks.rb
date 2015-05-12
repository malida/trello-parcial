class AddResponsibleToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :responsible, :integer
  end
end
