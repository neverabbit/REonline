class AddPictureToWebs < ActiveRecord::Migration
  def change
    add_column :webs, :image_big, :string
  end
end
