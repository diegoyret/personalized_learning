class AddExternal2ToTasks < ActiveRecord::Migration
  def change
  add_column :tasks, :external2, :string
  end
end
