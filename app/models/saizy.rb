class Saizy < ApplicationRecord
  belongs_to :user
  has_many_attached :images

  # images
  validates :images,  content_type: { in: %w[image/jpeg image/gif image/png],
                                      message: "画像は.jpeg .gif .pngのみになります" },
                      size: { less_than: 5.megabytes,
                              message: "画像は5MB以下までです。" }

  # リサイズ
end