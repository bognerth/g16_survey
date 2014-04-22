class Page < ActiveRecord::Base
  attr_accessible :day_of_week, :description, :lecture_id, :period, :period_end, :period_start, :presentations_per_day, :title, :days_set

  has_many :questions
  has_many :ratings

end
