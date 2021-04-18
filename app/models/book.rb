class Book < ApplicationRecord
    has_many :reviews
    has_many :readers, through: :reviews  

    def self.get_hardcover_fiction
        response = RestClient.get("https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=#{ENV["KEY"]}")
        #byebug
        hardcover_fiction = JSON.parse(response)["results"]["books"]
        #create a Ruby book object with all the info in the books array, use an iterator
        hardcover_fiction.each do |book|
            self.create(title: book["title"], author: book["author"], publisher: book["publisher"], description: book["description"], image: book["book_image"], link_to_purchase: book["amazon_product_url"]) 
        # binding.pry
        
        end
    end


    def self.get_hardcover_nonfiction
        response = RestClient.get("https://api.nytimes.com/svc/books/v3/lists/current/hardcover-nonfiction.json?api-key=#{ENV["KEY"]}")
        #byebug
        hardcover_non_fiction = JSON.parse(response)["results"]["books"]
        #create a Ruby book object with all the info in the books array, use an iterator
        hardcover_non_fiction.each do |book|
            self.create(title: book["title"], author: book["author"], publisher: book["publisher"], description: book["description"], image: book["book_image"], link_to_purchase: book["amazon_product_url"]) 
        # binding.pry
        
        end
    end

    def self.get_young_adult
        response = RestClient.get("https://api.nytimes.com/svc/books/v3/lists/current/young-adult.json?api-key=#{ENV["KEY"]}")
        #byebug
        young_adult = JSON.parse(response)["results"]["books"]
        #create a Ruby book object with all the info in the books array, use an iterator
        young_adult.each do |book|
            self.create(title: book["title"], author: book["author"], publisher: book["publisher"], description: book["description"], image: book["book_image"], link_to_purchase: book["amazon_product_url"], published: book["published_date"]) 
        # binding.pry
        
        end
    end
end
