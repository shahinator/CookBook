class User < ApplicationRecord
    validates :name, format: { with: /\A[0-9a-zA-Z]+\Z/ }, presence: true, length: { minimum: 3, maximum: 10 }
    validates :age, numericality: true 
    validates :email, 
    :presence => {:message => 'cannot be blank.'},   
    :format => {
      :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/, 
      :message => 'address is not valid. Please, fix it.'
    }, 
    :uniqueness => true 
end
