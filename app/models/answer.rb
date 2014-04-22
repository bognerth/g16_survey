class Answer < ActiveRecord::Base
  attr_accessible :content, :question_id

  belongs_to :question
  has_many :ratings
end
