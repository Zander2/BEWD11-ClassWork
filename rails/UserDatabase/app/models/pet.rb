class Pet < ActiveRecord::Base
    belongs_to :user
    
    validates :name,
        presence: true
        
    validates :pet_type,
        presence: true
        
    validates :gender,
        presence: true
        
    validates :age,
        presence: true,
        numericality: { only_integer: true }
    
end
