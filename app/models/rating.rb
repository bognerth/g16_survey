class Rating < ActiveRecord::Base
  attr_accessible :answer_id, :lecture_id, :page_id, :question_id, :user_id

  belongs_to :page
  belongs_to :question
  belongs_to :answer
end
