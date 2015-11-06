class User < ActiveRecord::Base
    
    has_many :pets
    
    validates :username,
        presence: true,
        uniqueness: true
    
end
