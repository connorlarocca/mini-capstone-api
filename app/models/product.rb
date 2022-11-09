class Product < ApplicationRecord
  has_many :images
  belongs_to :supplier

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 10..500 }

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  # def image
  #   Image.where(product_id: id)
  # end

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def is_discounted?
    if price >= 10
      return false
    else
      return true
    end
  end

  def tax
    tax = price * 0.09
  end

  def total
    sum = price * 1.09
  end
end
