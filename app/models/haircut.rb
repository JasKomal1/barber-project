class Haircut < ActiveRecord::Base 
    belongs_to :user
    belongs_to :barber

    def update_rating 
      Haircut.find_by(rating: rating)
    end

    
end