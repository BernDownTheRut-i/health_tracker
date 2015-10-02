require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase

  # test "exercise associated with exercise types" do
  #   e = Exercise.create
  #   t = ExceriseType.create(name: "Cycling")
  #   e.exercisetypes << t
  #
  #   assert_equal [t], Exercise.find(e.id).exercisetypes
  # end

  test "exercise calories burned" do
    exercise1 = exercises(:one)
    assert_equal 465, exercise1.calories_burned
    exercise2 = exercises(:two)
    assert_equal 450, exercise2.calories_burned
  end

end
