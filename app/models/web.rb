class Web < ActiveRecord::Base
  has_many :plates, dependent: :destroy
  has_many :collection_webs
  has_many :users, through: :collection_webs
  mount_uploader :image_big, ImageBigUploader
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :address, presence: true, uniqueness: { case_sensitive: false }
  
end
