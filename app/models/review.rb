class Review < ApplicationRecord
    belongs_to :book
    belongs_to :reader

    validates :book_review, length: { in: 5..500 }
    validates :star_rating, :status, presence: true
end
