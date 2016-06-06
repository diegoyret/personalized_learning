class AddVideoUrlToTasks < ActiveRecord::Migration
  def change
  add_column :tasks, :video_url, :string
  end
end
