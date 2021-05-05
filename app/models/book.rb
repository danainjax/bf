class Book < ApplicationRecord
    has_many :reviews
    has_many :readers, through: :reviews 
    
    
    validates :title, presence: true, uniqueness: { case_sensitive: false }
    validates :author, presence: true

    scope :genre, ->{order('genre')}
    scope :five_star, ->{joins(:reviews).distinct.where("reviews.star_rating == 5")}
    scope :grouped_reviews, ->{joins(:reviews).group('reviews.book_id')}

    def self.get_list(list)
       
        response = RestClient.get("https://api.nytimes.com/svc/books/v3/lists/current/#{list}.json?api-key=#{ENV["KEY"]}")
        # byebug
        list = JSON.parse(response)["results"]
        book_details = (list)["books"]
        #create a Ruby book object with all the info in the books array, use an iterator
        book_details.each do |book|
            self.create(title: book["title"], author: book["author"], publisher: book["publisher"], description: book["description"], image: book["book_image"], link_to_purchase: book["amazon_product_url"], genre: (list)["list_name"], published: (list)["published_date"]) 
        
        end
    end

end
