class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
    @review = Review.new(product: @product)
    @reviews = Review.where(product_id: @product.id)
    @product_rating = @reviews.average(:rating)
  end

end
