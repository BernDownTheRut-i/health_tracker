class ExerciseType < ActiveRecord::Base
  belongs_to :exercise
  validates :name, uniqueness: true
  validates :burn_rate, presence: true

end
