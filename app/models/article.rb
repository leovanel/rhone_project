class Article < ApplicationRecord

  has_many_attached :article_images
  has_many :paragraphs

  belongs_to :rubric
  belongs_to :user
end
