module BooksHelper

    def current_book
        @book = Book.find_by_id(params[:id])
    end
end
