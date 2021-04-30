class ReviewsController < ApplicationController

    before_action :set_review, only: [:edit, :update, :destroy, :show ]
    

    def new
        # byebug
        if params[:book_id]
            @review = Review.new(book_id: params[:book_id])
        else
            @review = Review.new
        end
       
    end
    
    def show
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
       @book = Book.find_by(id: params[:book_id])
        if params[:book_id] && !@book.nil?
            @reviews = Book.find(params[:book_id]).reviews
        else
            @reader = Reader.find_by(id: params[:reader_id])
            if params[:reader_id] && !@reader.nil?
                @reviews = Reader.find(params[:reader_id]).reviews
            else
                @reviews = Review.all
            end
        end
    end
    
    def edit 
    end
    
    def update
        if @review.update(review_params)
            redirect_to review_path(@review)
        else
            render :edit
        end
    end
    
    def destroy
        @review.destroy
        redirect_to reviews_path
    end
    
    private
    
    def review_params
        params.require(:review).permit(:star_rating, :book_review, :status, :reader_id, :book_id, :id)
    end 
    
    def set_review
        @review = Review.find_by_id(params[:id])
    end
    
end
