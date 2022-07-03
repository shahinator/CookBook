class Recipe < ApplicationRecord
    validates :title, format: { with: /\A[0-9a-zA-Z]+\Z/ }, presence: true, uniqueness: true, length: { minimum: 5, maximum: 15 }
    validates :desccription, presence: true, length: { minimum: 10, maximum: 200 }
    validates :writer, presence: true
    validates :price, numericality: { only_integer: true }
end
