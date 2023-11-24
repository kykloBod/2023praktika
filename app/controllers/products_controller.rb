class ProductsController < ApplicationController
    before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product, notice: 'Товар создан'
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: 'Товар обновлен'
    else
      render :edit
    end
  end 
    def destroy
    @product.destroy
    redirect_to products_url, notice: 'Товар удален'
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end
end

 def product_params
  params.require(:product).permit(:name, :description, :price, :rating, :avatar)
 end

