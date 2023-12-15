class CartController < ApplicationController
  def index; end

  def show; end

  def add
    if current_user.nil?
        redirect_to new_user_registration_path, alert: 'Please register or log in to add items to your cart.'
    else
        @product = Product.find_by(id: params[:id])
        quantity = params[:quantity].to_i
        current_orderable = @cart.orderables.find_by(product_id: @product.id)
        if current_orderable && quantity > 0
            current_orderable.update(quantity:)
        elsif quantity <= 0
            current_orderable.destroy
        else
            @cart.orderables.create(product: @product, quantity:)
        end
        flash[:notice] = "Product has been added to the cart."
    end
end

  def remove
    Orderable.find_by(id: params[:id]).destroy
  end

  def my_action
    @value_from_db = MyModel.find(1).quantity
  end
end