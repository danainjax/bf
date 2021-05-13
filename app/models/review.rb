class Review < ApplicationRecord
    belongs_to :book
    belongs_to :reader

    validates :status, presence: true
    validates :book_review, length: { in: 10..500 }, allow_blank: true
    validates :star_rating, :status, presence: true, allow_blank: true

    scope :by_the_book, ->{order(:book_id)}
    scope :status, ->{order('status DESC')}
    
end
