class ReviewsController < ApplicationController
    def new
        # byebug
        @review = Review.new(book_id:params[:book_id])
        @book = Book.find_by(params[:book_id])
    end
    
    def show
        @review = Review.find_by_id(params[:id])
        redirect_to reviews_path if !@review
    end
    
    def create
        
       @book = Book.find_by(params[:book_id])
        if params[:book_id]
            @review = Book.find(params[:book_id]).build(review_params)
        else
            @review = Review.new(review_params)
            @review.save
        redirect_to review_path(@review)
        end
    end
    
    def index
        if params[:book_id]
            @reviews = Book.find(params[:book_id]).reviews
        else
            if params[:reader_id]
                @reviews = Reader.find(params[:reader_id]).reviews
            else
                @reviews = Review.all 
            end
        end
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
