module ApplicationHelper

	def price_calculate(product)
    if (product.discountpercentage) > 0
      percentage = ((product.price * product.discountpercentage) / 100)
      return product.price - percentage
    else
      return product.price
    end
  end

  

  def check_stock(product)
    if product.stock < 1
      return link_to 'NO STOCK', "#", class: 'btn btn-sm btn-outline-danger'
    else
      
      return link_to 'BUY', homes_path, class: 'btn btn-sm btn-outline-success'
      
    end
  end

  def check_stockk(product)
    if product.stock > 1
      return link_to 'Add to Cart', line_items_path(product_id: product), class: 'btn btn-sm btn-outline-secondary'
    end
  end

  

end
