class CreatePlates < ActiveRecord::Migration
  def change
    create_table :plates do |t|
      t.string :name
      t.string :address
      t.string :description

      t.timestamps null: false
    end
  end
end
