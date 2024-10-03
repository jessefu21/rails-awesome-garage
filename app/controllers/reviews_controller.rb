class ReviewsController < ApplicationController
  def create
    @review = Review.new(params_review)
     @car = Car.find(params[:car_id])
     @review.car = @car

    if @review.save
      redirect_to car_path(@car)
    else
      render "cars/show", status: :unprocessable_entity
    end
  end

  private

  def params_review
    params.require(:review).permit(:comment, :rating)
  end
end
