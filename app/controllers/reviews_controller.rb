class ReviewsController < ApplicationController
  before_filter :authorize
  def create
    @product_id = params[:product_id]
    review = Review.new(review_params)
    review.user = current_user if current_user
    review.product_id = @product_id

    if review.save
      flash[:notice] = 'Your review has been added.'
      redirect_to product_path(id: @product_id)
    else
      flash[:notice] = 'There is something wrong with your error. Please try it.'
      redirect_to product_path(id: @product_id)
    end
  end

  def destroy
    @review_id = params[:review_id]
    @review = Review.find_by(id: @review_id)
    @review.destroy

    @product_id = params[:product_id]
    redirect_to product_path(id: @product_id)
  end

  private

  def review_params
    params.require(:review).permit(
      :rating,
      :description
    )
  end

end
