class Step < ActiveRecord::Base

  def self.steps_on_day(day)
    Step.where(date: day).all.sum(:number)
  end

  def self.calories_burned(date)
    self.steps_on_day(date) * 0.05
  end

end
