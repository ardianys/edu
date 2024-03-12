class Campaign < ApplicationRecord
  belongs_to :category
  mount_uploader :picture, ImageUploader
  has_rich_text :content
  has_many :donations, dependent: :destroy
end
