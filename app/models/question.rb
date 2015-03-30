class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :choices
  has_many :responses

  validates :content, :survey_id, presence: true
end
