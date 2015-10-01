class ExerciseType < ActiveRecord::Base
  belongs_to :exercise
  validates :name, uniqueness: true
end
