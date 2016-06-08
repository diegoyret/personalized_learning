class AddTimeSpentToSubmissions < ActiveRecord::Migration
  def change
  add_column :submissions, :time_spent, :integer
  end
end
