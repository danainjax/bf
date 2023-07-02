class Book < ApplicationRecord
    has_many :reviews
    has_many :readers, through: :reviews 
    
    
    validates :title, presence: true, uniqueness: { case_sensitive: false }
    validates :author, presence: true

    scope :genre, ->{order(:created_at)}
    scope :five_star, ->{joins(:reviews).distinct.where(`reviews.star_rating == "5"`)}
    scope :grouped_reviews, ->{joins(:reviews).group(:reviews, 'books.id')}
    

    def self.get_list(list)
       
        response = RestClient.get("https://api.nytimes.com/svc/books/v3/lists/current/#{list}.json?api-key=#{ENV["KEY"]}")
        # byebug
        list = JSON.parse(response)["results"]
        book_details = (list)["books"]
        #create a Ruby book object with all the info in the books array, use an iterator
        book_details.each do |book|
            
            self.create(title: book["title"], author: book["author"], publisher: book["publisher"], description: book["description"], image: book["book_image"], link_to_purchase: book["amazon_product_url"], genre: (list)["list_name"], published: (list)["published_date"]) 
           
                sleep(1) # sleep for 1 second
            
              
        end
    end
    def self.sorted_books
        genre_order = ["Hardcover Fiction", "Trade Fiction Paperback", "Hardcover Nonfiction", "Mass Market Paperback", "combined-print-and-e-book-fiction", "Hardcover Advice", "Culture", "Hardcover Political Books", "Food and Fitness", "Humor", "Paperback Advice", "Health", "Travel", "Young Adult", "Animals", "Celebrities", "Business Books", "Picture Books", "Hardcover Graphic Books", "Manga", "Sports", "Science", "Religion Spirituality and Faith", "Family", "Race and Civil Rights"]
      
        books_array = self.all.to_a
      
        books_array.sort_by { |book| genre_order.index(book.genre) || genre_order.size }
      end
      
   
end
