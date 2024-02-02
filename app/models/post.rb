class Post < ApplicationRecord
  mount_uploader :pict, ImageUploader
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_rich_text :content
end
