Class BarbApp 

  def run 
    welcome
    login 
  end

  def welcome 
     puts "Hello welcome to the barber app"
  end

  def login 
    puts "Sign in or sign up"
    #response = gets.chomp.downcase
    #sign_up = User.create(name: name)
    #user = User.find_or_create_by(name: response)
    #puts "Hello, #{user.name.capitalize}"
  end

end 