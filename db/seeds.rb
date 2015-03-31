sam = {:first_name => "Samantha", :last_name => "Guergenenov",
  :email => "sam@gmail.com", :password => "123123", :password_confirmation => "123123"}
tracy = {:first_name => "Tracy", :last_name => "Teague",
  :email => "tracy@gmail.com", :password => "234234", :password_confirmation => "234234"}
tara = {:first_name => "Tara", :last_name => "Frye",
  :email => "tara@gmail.com", :password => "345345", :password_confirmation => "345345"}
malcolm = {:first_name => "Malcolm", :last_name => "Bouzi",
  :email => "malcolm@gmail.com", :password => "456456", :password_confirmation => "456456"}

user_1 = User.create!(sam)
user_2 = User.create!(tracy)
user_3 = User.create!(tara)
user_4 = User.create!(malcolm)

survey1 = {:title => "Are you a good person?", :description => "This survey will tell you if you are a good person",
  :creator_id => user_2.id }

survey2 = {:title => "How well do you know the world?", :description => "How much do you know about different countries? Find out now!",
  :creator_id => user_1.id }

survey3 = {:title => "Are you good at sciences?", :description => "This survey will determine how much you know about the sciences",
  :creator_id => user_3.id }

survey4 = {:title => "Can you stand up for your rights?", :description => "Are you willing to defy a political entity for the right cause?",
  :creator_id => user_4.id }

survey_1 = Survey.create!(survey1)
survey_2 = Survey.create!(survey2)
survey_3 = Survey.create!(survey3)
survey_4 = Survey.create!(survey4)

question1good = {:content => "Do you sometimes help people with their bags at the supermarket?" ,:survey_id => survey_1.id }
question2good = {:content => "Do you feel empathy for people?" ,:survey_id => survey_1.id }

question1world = {:content => "How many countries have you been outside of your own?" ,:survey_id => survey_2.id }
question2world = {:content => "Do you sometimes help people with their bags at the supermarket?" ,:survey_id => survey_2.id }

question1science = {:content => "How many bonds does oxygen have?" ,:survey_id => survey_3.id }
question2science = {:content => "What is an organism?" ,:survey_id => survey_3.id }

question1stand = {:content => "Would you be willing to risk your life to defend a just cause?" ,:survey_id => survey_4.id }
question2stand = {:content => "Would you be willing to sacrifice everything you have to defend a just cause?" ,:survey_id => survey_4.id }

question1_good = Question.create!(question1good)
question2_good = Question.create!(question2good)

question1_world = Question.create!(question1world)
question2_world = Question.create!(question2world)

question1_science = Question.create!(question1science)
question2_science = Question.create!(question2science)

question1_stand = Question.create!(question1stand)
question2_stand = Question.create!(question2stand)


