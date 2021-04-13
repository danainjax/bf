class ReviewsController < ApplicationController
    def new
        @review = Review.new
    end
    
    def show
        @review = Review.find_by_id(params[:id])
    end
    
    def create
        @review = Review.new(review_params)
        @review.save
        redirect_to review_path(@review)
    end
    
    def index
        @reviews = Review.all 
    end
    
    def edit
        @review = Review.find_by_id(params[:id])
    end
    
    def update
        @review = Review.find_by_id(params[:id])
        @review.update(review_params)
        redirect_to review_path(@review)
    end
    
    def destroy
        @review = Review.find_by_id(params[:id])
        @review.destroy
    end
    
    private
    
        def review_params
            params.require(:review).permit(:star_rating, :book_review, :status, :reader_id, :book_id, :id)
                
        end 
    
    
    
end
