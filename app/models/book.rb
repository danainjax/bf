class Book < ApplicationRecord
    has_many :reviews
    has_many :readers through: :reviews  
end
