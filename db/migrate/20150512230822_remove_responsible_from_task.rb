class RemoveResponsibleFromTask < ActiveRecord::Migration
  def change
    remove_column :tasks, :responsible, :integer
  end
end
