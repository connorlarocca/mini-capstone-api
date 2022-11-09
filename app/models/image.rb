class Image < ApplicationRecord
  belongs_to :product
  # def products
  #   Product.where(image_id: id)
  # end
end
