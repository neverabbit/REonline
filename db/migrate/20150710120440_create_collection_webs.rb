class CreateCollectionWebs < ActiveRecord::Migration
  def change
    create_table :collection_webs do |t|

      t.timestamps null: false
    end
  end
end
