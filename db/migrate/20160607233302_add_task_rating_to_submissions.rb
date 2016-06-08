class AddTaskRatingToSubmissions < ActiveRecord::Migration
  def change
  add_column :submissions, :task_rating, :integer
  end
end
