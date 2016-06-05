class RemoveModuleIdFromTasks < ActiveRecord::Migration
  def change
  remove_column :tasks, :module_id
  end
end
