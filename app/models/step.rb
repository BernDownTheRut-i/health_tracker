class Step < ActiveRecord::Base

  def self.sum_steps
    # self.all.reduce(0) {|sum, step| sum + step.number}
    Step.all.sum(:number)
  end

  def self.step_count
    self.count
  end

  def self.steps_on_day(day)
    Step.where(date: day).all.sum(:number)
  end

  def steps_calories_today
    self.steps_on_day(Date.today) * 0.05
  end

end
