class Article < ApplicationRecord

  has_many_attached :article_images

  belongs_to :rubric
  belongs_to :user
end
