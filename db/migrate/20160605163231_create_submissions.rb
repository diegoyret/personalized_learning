class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|

      t.integer :task_id

      t.string :user_id


      t.timestamps

    end

  end
end
