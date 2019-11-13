class ReviewsController < ApplicationController

  def show
  @review = Review.find(params[:id])
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurants_path
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
# class ReviewsController < ApplicationController
#  def new
#    @restaurant = Restaurant.find(params[:restaurant_id])
#    @review = Review.new
#  end
#  def create
#    @reviews = Review.new(review_params)
#    @restaurant = Restaurant.find(params[:restaurant_id])
#    @reviews.restaurant = @restaurant
#    @reviews.save
#    redirect_to restaurant_path(@restaurant)
#  end
#  private
#  def review_params
#    params.require(:review).permit(:content, :rating)
#  end
# end
