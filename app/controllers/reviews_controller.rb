# app/controllers/reviews_controller.rb
class ReviewsController < ApplicationController
    skip_before_action :authorize, only: [:new, :create]
  
    def new
      @review = Review.new
    end
  
    def create
      if current_user
        @review = current_user.reviews.new(review_params)
  
        if @review.save
          render json: @review
        else
          render json: { error: @review.errors.full_messages }, status: :unprocessable_entity
        end
      else
        render json: { error: "User not found" }, status: :unprocessable_entity
      end
    end
  
    private
  
    def review_params
      params.require(:review).permit(:message)
    end
  end
  