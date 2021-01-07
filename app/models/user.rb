class User < ActiveRecord::Base 

    has_many :haircuts
    has_many :barbers, through: :haircuts

    # def see_barbers 
    #   self.barbers 
    # end

    def choose_haircut(hairstyle) 
      binding.pry
      barber = Barber.find_by(hairstyle: hairstyle)
      new_cut = Haircut.create(user_id: self.id, barber_id: barber.id, rating: 0)
    end

    def rate_haircut(hairstyle, rating) 
      barb_1 = self.barbers.find{|barber| barber.hairstyle == hairstyle}
      haircut = self.haircuts.find{|barber| barber.barber_id == barb_1.id}
      haircut.update(rating: rating)
    end

    def delete_cut(cut)
      binding.pry
       user = self.barbers.find{|barber| barber.hairstyle == cut}
       hairness = self.haircuts.find{|haircut| haircut.barber_id == user.id}
       hairness.destroy
       #user.destroy
    end

end