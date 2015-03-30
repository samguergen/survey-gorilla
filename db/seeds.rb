sam = {:first_name => "Samantha", :last_name => "Guergenenov",
  :email => "sam@gmail.com", :password => "123123", :password_confirmation => "123123"}
tracy = {:first_name => "Tracy", :last_name => "Teague",
  :email => "tracy@gmail.com", :password => "234234", :password_confirmation => "234234"}

user_1 = User.create!(sam)
user_2 = User.create!(tracy)
