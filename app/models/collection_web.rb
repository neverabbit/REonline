class CollectionWeb < ActiveRecord::Base
  belongs_to :user
  belongs_to :web
end
