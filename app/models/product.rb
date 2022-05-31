class Product < ApplicationRecord
    belongs_to :user

    has_one_attached :image

    validates :name, presence: true, length: {minimum: 3}
    validates :description, presence: true, length: {minimum: 50}
    validates :price, :image, presence: true
end
