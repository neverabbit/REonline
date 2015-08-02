class Plate < ActiveRecord::Base
  belongs_to :web
  validates :web_id, presence: true
  validates :address, presence: true
end
