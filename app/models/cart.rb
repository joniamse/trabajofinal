class Cart < ApplicationRecord
	has_many :line_items, dependent: :destroy
	belongs_to :account
	
	after_initialize :default_values

    

	def add_product(product)
	  current_item = line_items.find_by(product_id: product.id)
	  if current_item
	  	current_item.quantity += 1
	  else
	  	current_item = line_items.build(product_id: product.id)
	  end
	  current_item
	end	



	private
      def default_values
        self.account_id ||= @accountid
      end
end
