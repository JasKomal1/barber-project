class CreateHaircuts < ActiveRecord::Migration[5.2] 
    def change 
      create_table :haircuts do |t| 
        t.integer :user_id 
        t.integer :barber_id
        t.integer :rating
        t.timestamps
      end
    end

end