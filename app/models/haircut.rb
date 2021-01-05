class Haircut < ActiveRecord::Base 
    belongs_to :user
    belongs_to :barber

    
end