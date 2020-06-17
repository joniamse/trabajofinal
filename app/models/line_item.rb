class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  
  def self.recorrido
      list = []
      for l in LineItem.all
        for c in Cart.all
          if l.cart.id == c.id
            if c.account_id == current_account.id
              list.push l
            end
          end
        end
      end
      return list
  end

  
  
end
