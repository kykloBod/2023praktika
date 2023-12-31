class ApplicationController < ActionController::Base
  before_action :set_render_cart
  before_action :initialize_cart
  include Pundit::Authorization
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def set_render_cart
    @render_cart = true
  end

 

   def initialize_cart
    if current_user
      @cart = current_user.cart || current_user.create_cart
    elsif session[:cart_id] && Cart.exists?(session[:cart_id])
      @cart = Cart.find(session[:cart_id])
    else
      return unless @cart.nil?
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end
  end
 

  private

  def user_not_authorized
    flash[:alert] = 'Упс Ошибка'
    redirect_to root_path
  end
end