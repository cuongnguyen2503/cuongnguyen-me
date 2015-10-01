class Image < ActiveRecord::Base
  belongs_to :album
  default_scope -> {order(created_at: :desc)}
  mount_uploader :name, PictureUploader
end
