class AddExternal1ToTasks < ActiveRecord::Migration
  def change
  add_column :tasks, :external1, :string
  end
end
