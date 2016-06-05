class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|

      t.integer :module_id

      t.string :name

      t.text :description

      t.string :type

      t.string :graded

      t.integer :predecessor

      t.string :url


      t.timestamps

    end

  end
end
