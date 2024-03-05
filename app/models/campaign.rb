class Campaign < ApplicationRecord
  mount_uploader :picture, ImageUploader
  has_rich_text :content
end
