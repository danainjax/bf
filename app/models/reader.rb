class Reader < ApplicationRecord
    has_many :reviews
    has_many :books, through: :reviews

    has_secure_password

    validates :username, presence: true
    validates :first_name, presence: true
    validates :email, presence: true
end
