class Paragraph < ApplicationRecord
  belongs_to :article
  has_one_attached :ph_image
end
