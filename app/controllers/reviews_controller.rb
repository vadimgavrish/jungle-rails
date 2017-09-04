class ReviewsController < ApplicationController

  before_filter :require_login

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    @review.user_id = current_user.name

    if @review.save
      redirect_to @product, notice: 'comment created!'
    else
      redirect_to [:products]
    end
  end

  def destroy
    @review = Review.find params[:id]
    @review.destroy
    redirect_to [:products], notice: 'Review deleted!'
  end
end

  private

  def review_params
    params.require(:review).permit(
      :description,
      :rating
    )
  end

  def require_login
    unless current_user
    @review = @product.reviews.new(review_params)
  end


end
