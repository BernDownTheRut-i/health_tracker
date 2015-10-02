class Step < ActiveRecord::Base

  def self.sum_steps
    self.all.reduce(0) {|sum, step| sum + step.number}
  end

  def self.step_count
    self.count
  end

end
