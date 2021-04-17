class BooksController < ApplicationController

    def new
        @book = Book.new
    end

    def create
       @book = Book.new(book_params)
        if @book.save 
            redirect_to book_path(@book)
        end
    end

    def show
        @book = Book.find(params[:id])
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
                @books = Book.all
            end
       
    end
    
     
    

    def destroy
        @book.destroy
        redirect_to book_path(@book)
    end



private

    def book_params
        params.require(:book).permit(:title, :author, :published, :publisher, :description, :genre, :image, :link_to_purchase)
    end
end
