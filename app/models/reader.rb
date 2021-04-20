class Reader < ApplicationRecord
    has_many :reviews
    has_many :books, through: :reviews
    has_one_attached :profile_pic

    has_secure_password

    validates :username, presence: true, uniqueness: true
    validates :first_name, presence: true
    validates :email, presence: true, uniqueness: true
end
