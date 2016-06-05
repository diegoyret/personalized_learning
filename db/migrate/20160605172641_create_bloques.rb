class CreateBloques < ActiveRecord::Migration
  def change
    create_table :bloques do |t|

      t.string :name

      t.text :description

      t.integer :predecessor


      t.timestamps

    end

  end
end
