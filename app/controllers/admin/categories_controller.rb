class Admin::CategoriesController < ApplicationController

  def index
    basic
    @categories = Category.order(id: :desc).all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end

  # def destroy
  #   @category = Category.find params[:id]
  #   @category.destroy
  #   redirect_to [:admin, :categories], notice: 'Category deleted!'
  # end
  # Activate the above destroy if admin needs to delete category from the list
  private
  def category_params
    params.require(:category).permit(
      :name
    )
  end

  private
  def basic
    authenticate_or_request_with_http_basic do |user, pass|
      user == Rails.configuration.admin[:user] && pass == Rails.configuration.admin[:password]
    end
  end

end

