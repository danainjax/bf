class ReviewsController < ApplicationController
    def new
        # byebug
        if params[:book_id]
            @review = Review.new(book_id: params[:book_id])
        else
            @review = Review.new
        end
        # @book = Book.find_by(params[:book_id])
    end
    
    def show
        @review = Review.find_by_id(params[:id])
        redirect_to reviews_path if !@review
    end
    
    def create
            @review = Review.new(review_params)
             if @review.save
                redirect_to review_path(@review)
             else
                render 'new'
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
                # @reviews = Review.reviews_by_book 
            end
        end
    end
    
    def edit
        @review = Review.find_by_id(params[:id])
        
    end
    
    def update
        @review = Review.find_by_id(params[:id])
        if @review.update(review_params)
            redirect_to review_path(@review)
        else
            render :edit
        end
    end
    
    def destroy
        @review = Review.find_by_id(params[:id])
        @review.destroy
        redirect_to reviews_path
    end
    
    private
    
        def review_params
            params.require(:review).permit(:star_rating, :book_review, :status, :reader_id, :book_id, :id)
                
        end 
    
    
    
end
