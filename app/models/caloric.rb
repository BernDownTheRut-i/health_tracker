class Caloric < ActiveRecord::Base

  def self.consumed (date)
    cc = Caloric.where(date: date).reduce(0) do |sum, c|
      sum += c.number
    end
    cc.abs
  end

end
