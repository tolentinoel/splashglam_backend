class ReviewsController < ApplicationController

    def show
        review = Review.find(params[:id])
        render json: review
    end

    def create
        user = User.find(params[:user_id])
        product = Product.find(params[:product_id])
        review = Review.create(review_params)
        render json: review
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy
    end


    private

    def review_params
        params.require(:review).permit(:id, :content, :user_id, :product_id)
    end
end
