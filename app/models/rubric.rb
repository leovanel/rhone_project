class Rubric < ApplicationRecord
  
  has_one_attached :rubric_image

  has_many :articles
end
