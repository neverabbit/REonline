class AddWebReferenceToPlate < ActiveRecord::Migration
  def change
    add_reference :plates, :web, index: true, foreign_key: true
  end
end
