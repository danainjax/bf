class Book < ApplicationRecord
    has_many :reviews
    has_many :readers, through: :reviews 
    
    
    validates :title, presence: true, uniqueness: true
    validates :author, presence: true

    def self.get_hardcover_fiction
        response = RestClient.get("https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=#{ENV["KEY"]}")
        #byebug
        hardcover_fiction = JSON.parse(response)["results"]
        book_details = hardcover_fiction["books"]
        #create a Ruby book object with all the info in the books array, use an iterator
        book_details.each do |book|
            self.create(title: book["title"], author: book["author"], publisher: book["publisher"], description: book["description"], image: book["book_image"], link_to_purchase: book["amazon_product_url"], genre: hardcover_fiction["list_name"], published: hardcover_fiction["published_date"]) 
        
        end
    end


    def self.get_hardcover_nonfiction
        response = RestClient.get("https://api.nytimes.com/svc/books/v3/lists/current/hardcover-nonfiction.json?api-key=#{ENV["KEY"]}")
        #byebug
        hardcover_non_fiction = JSON.parse(response)["results"]
        book_details = hardcover_non_fiction["books"]
        #create a Ruby book object with all the info in the books array, use an iterator
        book_details.each do |book|
            self.create(title: book["title"], author: book["author"], publisher: book["publisher"], description: book["description"], image: book["book_image"], link_to_purchase: book["amazon_product_url"], genre: hardcover_non_fiction["list_name"], published: hardcover_non_fiction["published_date"]) 
        
        end
    end

    def self.get_young_adult
        response = RestClient.get("https://api.nytimes.com/svc/books/v3/lists/current/young-adult.json?api-key=#{ENV["KEY"]}")
        # byebug
        young_adult = JSON.parse(response)["results"]
        book_details = young_adult["books"]
        # byebug
        #create a Ruby book object with all the info in the books array, use an iterator
        book_details.each do |book|
            
            self.create(title: book["title"], author: book["author"], publisher: book["publisher"], description: book["description"], image: book["book_image"], link_to_purchase: book["amazon_product_url"], genre: young_adult["list_name"], published: young_adult["published_date"]) 
        
        
        end
    end
end
