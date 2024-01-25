class Post < ApplicationRecord
  mount_uploader :pict, ImageUploader
  belongs_to :user
end
