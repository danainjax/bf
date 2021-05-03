class Book < ApplicationRecord
    has_many :reviews
    has_many :readers, through: :reviews 
    
    
    validates :title, presence: true, uniqueness: { case_sensitive: false }
    validates :author, presence: true

    scope :alpha, ->{order('title')}
    scope :five_star, ->{joins(:reviews).where("reviews.star_rating == 5")}


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

    def self.get_hardcover_advice
        response = RestClient.get("https://api.nytimes.com/svc/books/v3/lists/current/hardcover-advice.json?api-key=#{ENV["KEY"]}")
        #byebug
        hardcover_advice = JSON.parse(response)["results"]
        book_details = hardcover_advice["books"]
        #create a Ruby book object with all the info in the books array, use an iterator
        book_details.each do |book|
            self.create(title: book["title"], author: book["author"], publisher: book["publisher"], description: book["description"], image: book["book_image"], link_to_purchase: book["amazon_product_url"], genre: hardcover_advice["list_name"], published: hardcover_advice["published_date"]) 
        
        end
    end

    def self.get_animals
        response = RestClient.get("https://api.nytimes.com/svc/books/v3/lists/current/animals.json?api-key=#{ENV["KEY"]}")
        #byebug
        animals = JSON.parse(response)["results"]
        book_details = animals["books"]
        #create a Ruby book object with all the info in the books array, use an iterator
        book_details.each do |book|
            self.create(title: book["title"], author: book["author"], publisher: book["publisher"], description: book["description"], image: book["book_image"], link_to_purchase: book["amazon_product_url"], genre: animals["list_name"], published: animals["published_date"]) 
        
        end
    end

    def self.celebrities
        response = RestClient.get("https://api.nytimes.com/svc/books/v3/lists/current/celebrities.json?api-key=#{ENV["KEY"]}")
        #byebug
        celebrities = JSON.parse(response)["results"]
        book_details = celebrities["books"]
        #create a Ruby book object with all the info in the books array, use an iterator
        book_details.each do |book|
            self.create(title: book["title"], author: book["author"], publisher: book["publisher"], description: book["description"], image: book["book_image"], link_to_purchase: book["amazon_product_url"], genre: celebrities["list_name"], published: celebrities["published_date"]) 
        
        end
    end

    def self.business_books
        response = RestClient.get("https://api.nytimes.com/svc/books/v3/lists/current/business-books.json?api-key=#{ENV["KEY"]}")
        #byebug
        business_books = JSON.parse(response)["results"]
        book_details = business_books["books"]
        #create a Ruby book object with all the info in the books array, use an iterator
        book_details.each do |book|
            self.create(title: book["title"], author: book["author"], publisher: book["publisher"], description: book["description"], image: book["book_image"], link_to_purchase: book["amazon_product_url"], genre: business_books["list_name"], published: business_books["published_date"]) 
        
        end
    end

end
