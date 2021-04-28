class Review < ApplicationRecord
    belongs_to :book
    belongs_to :reader

    validates :status, presence: true
    validates :book_review, length: { in: 5..500 }
    validates :star_rating, :status, presence: true

    # def self.reviews_by_book
    #     joins(:book).group('review.book_title')
    # end
    
end
