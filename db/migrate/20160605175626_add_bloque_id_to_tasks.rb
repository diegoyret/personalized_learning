class AddBloqueIdToTasks < ActiveRecord::Migration
  def change
  add_column :tasks, :bloque_id,:integer
  end
end
