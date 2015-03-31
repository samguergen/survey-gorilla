sam = {:first_name => "Samantha", :last_name => "Guergenenov",
  :email => "sammy@gmail.com", :password => "123123", :password_confirmation => "123123"}
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
question2world = {:content => "Can you speak more than one language?" ,:survey_id => survey_2.id }

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

c1q1good = {:option => "Always" , :question_id => question1_good.id}
c2q1good = {:option => "Sometimes" , :question_id => question1_good.id}
c3q1good = {:option => "Never" , :question_id => question1_good.id}

c1q2good = {:option => "Always" , :question_id => question2_good.id}
c2q2good = {:option => "Sometimes" , :question_id => question2_good.id}
c3q2good = {:option => "Never" , :question_id => question2_good.id}

c1q1world = {:option => "At least 4" , :question_id => question1_world.id}
c2q1world = {:option => "At least one" , :question_id => question1_world.id}
c3q1world = {:option => "None" , :question_id => question1_world.id}

c1q2world = {:option => "Yes, at least one fluently" , :question_id => question2_world.id}
c2q2world = {:option => "Yes, one or two at basic, conversational level" , :question_id => question2_world.id}
c3q2world = {:option => "No" , :question_id => question2_world.id}

c1q1science = {:option => "3" , :question_id => question1_science.id}
c2q1science = {:option => "2" , :question_id => question1_science.id}
c3q1science = {:option => "1" , :question_id => question1_science.id}

c1q2science = {:option => "A group of organs working together as a living entity" , :question_id => question2_science.id}
c2q2science = {:option => "A human" , :question_id => question2_science.id}
c3q2science = {:option => "Something that isn't dead" , :question_id => question2_science.id}

c1q1stand = {:option => "Absolutely" , :question_id => question1_stand.id}
c2q1stand = {:option => "Maybe" , :question_id => question1_stand.id}
c3q1stand = {:option => "Never" , :question_id => question1_stand.id}

c1q2stand = {:option => "Absolutely" , :question_id => question2_stand.id}
c2q2stand = {:option => "Maybe" , :question_id => question2_stand.id}
c3q2stand = {:option => "Never" , :question_id => question2_stand.id}

c1q1_good = Choice.create!(c1q1good)
c2q1_good = Choice.create!(c2q1good)
c3q1_good = Choice.create!(c3q1good)
c1q2_good = Choice.create!(c1q2good)
c2q2_good = Choice.create!(c2q2good)
c3q2_good = Choice.create!(c3q2good)

c1q1_world = Choice.create!(c1q1world)
c2q1_world = Choice.create!(c2q1world)
c3q1_world = Choice.create!(c3q1world)
c1q2_world  = Choice.create!(c1q2world)
c2q2_world  = Choice.create!(c2q2world)
c3q2_world  = Choice.create!(c3q2world)

c1q1_science = Choice.create!(c1q1science)
c2q1_science = Choice.create!(c2q1science)
c3q1_science = Choice.create!(c3q1science)
c1q2_science  = Choice.create!(c1q2science)
c2q2_science  = Choice.create!(c2q2science)
c3q2_science  = Choice.create!(c3q2science)

c1q1_stand = Choice.create!(c1q1stand)
c2q1_stand = Choice.create!(c2q1stand)
c3q1_stand = Choice.create!(c3q1stand)
c1q2_stand  = Choice.create!(c1q2stand)
c2q2_stand  = Choice.create!(c2q2stand)
c3q2_stand  = Choice.create!(c3q2stand)
