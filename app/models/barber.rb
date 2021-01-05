class Barber < ActiveRecord::Base 
    
    has_many :haircuts
    has_many :users, through: :haircuts

    def barbers 
      self.all 
    end



end