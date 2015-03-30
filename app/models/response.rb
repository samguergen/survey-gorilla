class Response < ActiveRecord::Base
  belongs_to :question
  belongs_to :taker, class_name: 'User'
  belongs_to :choice

  validates :question_id, :taker_id, :choice_id, presence: true
end
