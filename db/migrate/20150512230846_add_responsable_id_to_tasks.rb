class AddResponsableIdToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :responsable_id, :integer
  end
end
