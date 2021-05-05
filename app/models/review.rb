class Review < ApplicationRecord
    belongs_to :book
    belongs_to :reader

    validates :status, presence: true
    validates :book_review, length: { in: 5..500 }
    validates :star_rating, :status, presence: true

    scope :by_the_book, ->{order(:book_id)}
    
end
