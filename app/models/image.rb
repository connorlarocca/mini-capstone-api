class Image < ApplicationRecord
  belongs_to :products
  # def products
  #   Product.where(image_id: id)
  # end
end
