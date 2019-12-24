class Article < ApplicationRecord
  belongs_to :rubric
  belongs_to :user
end
