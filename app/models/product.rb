class Product < ApplicationRecord
    belongs_to :user

    has_one_attached :image

    # validates form inputs
    validates :name, presence: true, length: {minimum: 3}
    validates :description, presence: true, length: {minimum: 2}
    validates :price, presence: true
end
