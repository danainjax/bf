class BooksController < ApplicationController

    before_action :set_book, only: [:show, :edit, :update, :destroy]
    before_action :set_genres, only: [:index]

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
           
        redirect_to books_path if !@book
        
            
    end

    def edit
        if current_reader.id != @book.reader_ids
            redirect_to book_path(@book)
        end
    end

    def update
        @book.update(book_params)
        redirect_to book_path(@book)
    end

    def index
        
            if params[:title]
                @books = Book.where('title LIKE ?', "%#{params[:title].upcase}%")
                elsif params[:author]
                    @books = Book.where('author LIKE ?', "%#{params[:author]}%")
                elsif params[:genre]
                    @books = Book.where('genre LIKE ?', "#{params[:genre]}")
            else
                @books = Book.all.genre
            end
       
    end

    def five_star
        @books = Book.all.five_star
        # binding.pry
    end
    
     
    

    def destroy
        @book.destroy
        redirect_to books_path
    end



private

    def book_params
        params.require(:book).permit(:title, :author, :published, :publisher, :description, :genre, :image, :link_to_purchase)
    end

    def set_book
        @book = Book.find_by_id(params[:id])
    end 
end
