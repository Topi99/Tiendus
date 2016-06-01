class InShoppingCartsController < ApplicationController
	def create
		in_shopping_cart = InShoppingCart.new(product_id: params[:product_id], shopping_cart: @shopping_cart)

		if in_shopping_cart.save
			redirect_to carrito_path, notice: "Producto guardado en carrito"
		else
			redirect_to product_path(id: params[:product_id]), alert:"No pudimos añadir el producto al carrito de compras"
		end
	end

	def destroy
		@in_shopping_cart = InShoppingCart.find(params[:id])
		@in_shopping_cart.destroy
		redirect_to carrito_path
	end
end
