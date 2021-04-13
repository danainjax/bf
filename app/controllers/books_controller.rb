class BooksController < ApplicationController

    def new
        @book = Book.new
    end

    def create
       book = Book.new(book_params)
        if book.save 
            redirect_ to book_path(@book)
        end
    end

    def show
        @book = Book.find(params[:id])
    end




private

    def book_params
        params.require(:book).permit(:title, :author, :published, :publisher, :description, :genre, :image, :link_to_purchase)
    end
end
