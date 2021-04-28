class BooksController < ApplicationController

    def new
        @book = Book.new
    end

    def create
        # byebug
       @book = Book.new(book_params)
        @book.save 
        if @book.save
            redirect_to book_path(@book)
        else
            render 'new'
        end
    end

    def show
        @book = Book.find_by_id(params[:id])
        redirect_to books_path if !@book
            
    end

    def edit
        @book = Book.find(params[:id])
    end

    def update
        @book = Book.find_by_id(params[:id])
        @book.update(book_params)
        redirect_to book_path(@book)
    end

    def index
        
            if params[:title]
                @books = Book.where('title LIKE ?', "%#{params[:title].upcase}%")
            else
                @books = Book.all.alpha
            end
       
    end
    
     
    

    def destroy
        Book.find(params[:id]).destroy
        redirect_to books_path
    end



private

    def book_params
        params.require(:book).permit(:title, :author, :published, :publisher, :description, :genre, :image, :link_to_purchase)
    end
end
