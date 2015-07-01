class Web < ActiveRecord::Base
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :address, presence: true, uniqueness: { case_sensitive: false }
  mount_uploader :image_big, ImageBigUploader
end
