class Question < ActiveRecord::Base
  attr_accessible :content, :survey_id

  belongs_to :page
  has_many :answers
  has_many :ratings

end
