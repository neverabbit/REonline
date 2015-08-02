class CreateWebs < ActiveRecord::Migration
  def change
    create_table :webs do |t|
      t.string :name
      t.string :address
      t.string :image_big_path
      t.string :image_small_path
      t.text :description

      t.timestamps null: false
    end
  end
end
