class Barber < ActiveRecord::Base 
    
    has_many :haircuts
    has_many :users, through: :haircuts

    def name 
      self.all.name
    end

    
    

end