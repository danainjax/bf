class Review < ApplicationRecord
    belongs_to :book
    belongs_to :reader

    validates :book_review, length: { in: 5..500 }
    validates :star_rating, :status, presence: true
    scope :by_rating, ->{joins(:book).group("reviews.star_rating")}
    # def self.reviews_by_book
    #     joins(:book).group('review.book_title')
    # end
end
