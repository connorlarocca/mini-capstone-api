class Product < ApplicationRecord
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
