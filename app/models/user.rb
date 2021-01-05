class User < ActiveRecord::Base 

    has_many :haircuts
    has_many :barbers, through: :haircuts

    def see_barbers 
      self.barbers 
    end

    def choose_barber(haircut) 
      self.barbers.select{|cut| cut.haircuts == haircut}
    end

    def get_haircut 
      
    end

end