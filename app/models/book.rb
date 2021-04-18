class Book < ApplicationRecord
    has_many :reviews
    has_many :readers, through: :reviews  

    def self.get_books
        response = RestClient.get("https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=#{ENV["KEY"]}")
        #byebug
        books = JSON.parse(response)["results"]["books"]
        #create a Ruby book object with all the info in the books array, use an iterator
        books.each do |book|
            self.create(title: book["title"], author: book["author"], publisher: book["publisher"], description: book["description"], image: book["book_image"], link_to_purchase: book["amazon_product_url"]) 
        # binding.pry
        
        end
    end
end
