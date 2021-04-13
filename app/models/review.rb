class Review < ApplicationRecord
    belongs_to :book
    belongs_to :reader
end
