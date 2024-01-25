class Post < ApplicationRecord
  mount_uploader :pict, ImageUploader
end
