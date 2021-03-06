# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



exercise_types = [["Cycling, mountain bike, bmx"   , 9.966666667],
["Cycling, <10 mph, leisure bicycling"   , 4.683333333],
["Cycling, >20 mph, racing "   , 18.76666667],
["Cycling, 10-11.9 mph, light"   , 7.033333333],
["Cycling, 12-13.9 mph, moderate "   , 9.383333333],
["Cycling, 14-15.9 mph, vigorous "   , 11.73333333],
["Cycling, 16-19 mph, very fast, racing"   , 14.06666667],
["Unicycling "   , 5.866666667],
["Stationary cycling, very light "   , 3.516666667],
["Stationary cycling, light"   , 6.45],
["Stationary cycling, moderate "   , 8.216666667],
["Stationary cycling, vigorous "   , 12.31666667],
["Stationary cycling, very vigorous"   , 14.66666667],
["Calisthenics, vigorous, pushups, situps… "   , 9.383333333],
["Calisthenics, light"   , 4.1],
["Circuit training, minimal rest "   , 9.383333333],
["Weight lifting, body building, vigorous"   , 7.033333333],
["Weight lifting, light workout"   , 3.516666667],
["Health club exercise "   , 6.45],
["Stair machine"   , 10.55],
["Rowing machine, light"   , 4.1],
["Rowing machine, moderate "   , 8.216666667],
["Rowing machine, vigorous "   , 9.966666667],
["Rowing machine, very vigorous"   , 14.06666667],
["Ski machine"   , 8.216666667],
["Aerobics, low impact "   , 5.866666667],
["Aerobics, high impact"   , 8.216666667],
["Aerobics, step aerobics"   , 9.966666667],
["Aerobics, general"   , 7.616666667],
["Jazzercise "   , 7.033333333],
["Stretching, hatha yoga "   , 4.683333333],
["Mild stretching"   , 2.933333333],
["Instructing aerobic class"   , 7.033333333],
["Water aerobics "   , 4.683333333],
["Ballet, twist, jazz, tap "   , 5.283333333],
["Ballroom dancing, slow "   , 3.516666667],
["Ballroom dancing, fast "   , 6.45],
["Running, 5 mph (12 minute mile)"   , 9.383333333],
["Running, 5.2 mph (11.5 minute mile)"   , 10.55],
["Running, 6 mph (10 min mile) "   , 11.73333333],
["Running, 6.7 mph (9 min mile)"   , 12.9],
["Running, 7 mph (8.5 min mile)"   , 13.48333333],
["Running, 7.5mph (8 min mile) "   , 14.66666667],
["Running, 8 mph (7.5 min mile)"   , 15.83333333],
["Running, 8.6 mph (7 min mile)"   , 16.41666667],
["Running, 9 mph (6.5 min mile)"   , 17.6],
["Running, 10 mph (6 min mile) "   , 18.76666667],
["Running, 10.9 mph (5.5 min mile) "   , 21.11666667],
["Running, cross country "   , 10.55],
["Running, general "   , 9.383333333],
["Running, on a track, team practice "   , 11.73333333],
["Running, stairs, up"   , 17.6],
["Track and field (shot, discus) "   , 4.683333333],
["Track and field (high jump, pole vault)"   , 7.033333333],
["Track and field (hurdles)"   , 11.73333333],
["Archery"   , 4.1],
["Badminton"   , 5.283333333],
["Basketball game, competitive "   , 9.383333333],
["Playing basketball, non game "   , 7.033333333],
["Basketball, officiating"   , 8.216666667],
["Basketball, shooting baskets "   , 5.283333333],
["Basketball, wheelchair "   , 7.616666667],
["Running, training, pushing wheelchair"   , 9.383333333],
["Billiards"   , 2.933333333],
["Bowling"   , 3.516666667],
["Boxing, in ring"   , 14.06666667],
["Boxing, punching bag "   , 7.033333333],
["Boxing, sparring "   , 10.55],
["Coaching: football, basketball, soccer…"   , 4.683333333],
["Cricket (batting, bowling) "   , 5.866666667],
["Croquet"   , 2.933333333],
["Curling"   , 4.683333333],
["Darts (wall or lawn) "   , 2.933333333],
["Fencing"   , 7.033333333],
["Football, competitive"   , 10.55],
["Football, touch, flag, general "   , 9.383333333],
["Football or baseball, playing catch"   , 2.933333333],
["Frisbee playing, general "   , 3.516666667],
["Frisbee, ultimate frisbee"   , 9.383333333],
["Golf, general"   , 5.283333333],
["Golf, walking and carrying clubs "   , 5.283333333],
["Golf, driving range"   , 3.516666667],
["Golf, miniature golf "   , 3.516666667],
["Golf, walking and pulling clubs"   , 5.05],
["Golf, using power cart "   , 4.1],
["Gymnastics "   , 4.683333333],
["Hacky sack "   , 4.683333333],
["Handball "   , 14.06666667],
["Handball, team "   , 9.383333333],
["Hockey, field hockey "   , 9.383333333],
["Hockey, ice hockey "   , 9.383333333],
["Riding a horse, general"   , 4.683333333],
["Horesback riding, saddling horse "   , 4.1],
["Horseback riding, grooming horse "   , 4.1],
["Horseback riding, trotting "   , 7.616666667],
["Horseback riding, walking"   , 2.933333333],
["Horse racing, galloping"   , 9.383333333],
["Horse grooming, moderate "   , 7.033333333],
["Horseshoe pitching "   , 3.516666667],
["Jai alai "   , 14.06666667],
["Martial arts, judo, karate, jujitsu"   , 11.73333333],
["Martial arts, kick boxing"   , 11.73333333],
["Martial arts, tae kwan do"   , 11.73333333],
["Krav maga training "   , 11.73333333],
["Juggling "   , 4.683333333],
["Kickball "   , 8.216666667],
["Lacrosse "   , 9.383333333],
["Orienteering "   , 10.55],
["Playing paddleball "   , 7.033333333],
["Paddleball, competitive"   , 11.73333333],
["Polo "   , 9.383333333],
["Racquetball, competitive "   , 11.73333333],
["Playing racquetball"   , 8.216666667],
["Rock climbing, ascending rock"   , 12.9],
["Rock climbing, rappelling"   , 9.383333333],
["Jumping rope, fast "   , 14.06666667],
["Jumping rope, moderate "   , 11.73333333],
["Jumping rope, slow "   , 9.383333333],
["Rugby"   , 11.73333333],
["Shuffleboard, lawn bowling "   , 3.516666667],
["Skateboarding"   , 5.866666667],
["Roller skating "   , 8.216666667],
["Roller blading, in-line skating"   , 14.06666667],
["Sky diving "   , 3.516666667],
["Soccer, competitive"   , 11.73333333],
["Playing soccer "   , 8.216666667],
["Softball or baseball "   , 5.866666667],
["Softball, officiating"   , 4.683333333],
["Softball, pitching "   , 7.033333333],
["Squash "   , 14.06666667],
["Table tennis, ping pong"   , 4.683333333],
["Tai chi"   , 4.683333333],
["Playing tennis "   , 8.216666667],
["Tennis, doubles"   , 7.033333333],
["Tennis, singles"   , 9.383333333],
["Trampoline "   , 4.1],
["Volleyball, competitive"   , 9.383333333],
["Playing volleyball "   , 3.516666667],
["Volleyball, beach"   , 9.383333333],
["Wrestling"   , 7.033333333],
["Wallyball"   , 8.216666667],
["Backpacking, Hiking with pack"   , 8.216666667],
["Carrying infant, level ground"   , 4.1],
["Carrying infant, upstairs"   , 5.866666667],
["Carrying 16 to 24 lbs, upstairs"   , 7.033333333],
["Carrying 25 to 49 lbs, upstairs"   , 9.383333333],
["Standing, playing with children, light "   , 3.283333333],
["Walk/run, playing with children, moderate"   , 4.683333333],
["Walk/run, playing with children, vigorous"   , 5.866666667],
["Carrying small children"   , 3.516666667],
["Loading, unloading car "   , 3.516666667],
["Climbing hills, carrying up to 9 lbs "   , 8.216666667],
["Climbing hills, carrying 10 to 20 lb "   , 8.8],
["Climbing hills, carrying 21 to 42 lb "   , 9.383333333],
["Climbing hills, carrying over 42 lb"   , 10.55],
["Walking downstairs "   , 3.516666667],
["Hiking, cross country"   , 7.033333333],
["Bird watching"   , 2.933333333],
["Marching, rapidly, military"   , 7.616666667],
["Children's games, hopscotch, dodgeball "   , 5.866666667],
["Pushing stroller or walking with children"   , 2.933333333],
["Pushing a wheelchair "   , 4.683333333],
["Race walking "   , 7.616666667],
["Rock climbing, mountain climbing "   , 9.383333333],
["Walking using crutches "   , 5.866666667],
["Walking the dog"   , 3.516666667],
["Walking, under 2.0 mph, very slow"   , 2.35],
["Walking 2.0 mph, slow"   , 2.933333333],
["Walking 2.5 mph"   , 3.516666667],
["Walking 3.0 mph, moderate"   , 3.866666667],
["Walking 3.5 mph, brisk pace"   , 4.45],
["Walking 3.5 mph, uphill"   , 7.033333333],
["Walking 4.0 mph, very brisk"   , 5.866666667],
["Walking 4.5 mph"   , 7.383333333],
["Walking 5.0 mph"   , 9.383333333],
["Boating, power, speed boat "   , 2.933333333],
["Canoeing, camping trip "   , 4.683333333],
["Canoeing, rowing, light"   , 3.516666667],
["Canoeing, rowing, moderate "   , 8.216666667],
["Canoeing, rowing, vigorous "   , 14.06666667],
["Crew, sculling, rowing, competition"   , 14.06666667],
["Kayaking "   , 5.866666667],
["Paddle boat"   , 4.683333333],
["Windsurfing, sailing "   , 3.516666667],
["Sailing, competition "   , 5.866666667],
["Sailing, yachting, ocean sailing "   , 3.516666667],
["Skiing, water skiing "   , 7.033333333],
["Ski mobiling "   , 8.216666667],
["Skin diving, fast"   , 18.76666667],
["Skin diving, moderate"   , 14.66666667],
["Skin diving, scuba diving"   , 8.216666667],
["Snorkeling "   , 5.866666667],
["Surfing, body surfing or board surfing "   , 3.516666667],
["Whitewater rafting, kayaking, canoeing "   , 5.866666667],
["Swimming laps, freestyle, fast "   , 11.73333333],
["Swimming laps, freestyle, slow "   , 8.216666667],
["Swimming backstroke"   , 8.216666667],
["Swimming breaststroke"   , 11.73333333],
["Swimming butterfly "   , 12.9],
["Swimming leisurely, not laps "   , 7.033333333],
["Swimming sidestroke"   , 9.383333333],
["Swimming synchronized"   , 9.383333333],
["Swimming, treading water, fast, vigorous "   , 11.73333333],
["Swimming, treading water, moderate "   , 4.683333333],
["Water aerobics, water calisthenics "   , 4.683333333],
["Water polo "   , 11.73333333],
["Water volleyball "   , 3.516666667],
["Water jogging"   , 9.383333333],
["Diving, springboard or platform"   , 3.516666667],
["Ice skating, < 9 mph "   , 6.45],
["Ice skating, average speed "   , 8.216666667],
["Ice skating, rapidly "   , 10.55],
["Speed skating, ice, competitive"   , 17.6],
["Cross country snow skiing, slow"   , 8.216666667],
["Cross country skiing, moderate "   , 9.383333333],
["Cross country skiing, vigorous "   , 10.55],
["Cross country skiing, racing "   , 16.41666667],
["Cross country skiing, uphill "   , 19.35],
["Snow skiing, downhill skiing, light"   , 5.866666667],
["Downhill snow skiing, moderate "   , 7.033333333],
["Downhill snow skiing, racing "   , 9.383333333],
["Sledding, tobagganing, luge"   , 8.216666667],
["Snow shoeing "   , 9.383333333],
["Snowmobiling "   , 4.1],
["General housework"   , 4.1],
["Cleaning gutters "   , 5.866666667],
["Painting "   , 5.283333333],
["Sit, playing with animals"   , 2.933333333],
["Walk / run, playing with animals "   , 4.683333333],
["Bathing dog"   , 4.1],
["Mowing lawn, walk, power mower "   , 6.45],
["Mowing lawn, riding mower"   , 2.933333333],
["Walking, snow blower "   , 4.1],
["Riding, snow blower"   , 3.516666667],
["Shoveling snow by hand "   , 7.033333333],
["Raking lawn"   , 5.05],
["Gardening, general "   , 4.683333333],
["Bagging grass, leaves"   , 4.683333333],
["Watering lawn or garden"   , 1.766666667],
["Weeding, cultivating garden"   , 5.283333333],
["Carpentry, general "   , 4.1],
["Carrying heavy loads "   , 9.383333333],
["Carrying moderate loads upstairs "   , 9.383333333],
["General cleaning "   , 4.1],
["Cleaning, dusting"   , 2.933333333],
["Taking out trash "   , 3.516666667],
["Walking, pushing a wheelchair"   , 4.683333333],
["Teach physical education,exercise class"   , 4.683333333],
["Teach exercise classes (& participate) "   , 7.616666667]]

exercise_types.each do |et|
  ExerciseType.create(name: et[0], burn_rate: et[1])
end

150.times do
  Step.create(date: Date.today - rand(1..100).day, number: rand(1..1000))
end

150.times do
  Weight.create(date: Date.today - rand(1..100).day, number: rand(100..500))
end

50.times do
  Caloric.create(date: Date.today - rand(1..100).day, number: rand(1..2500))
end

types = ExerciseType.all
50.times do
  Exercise.create(date: Date.today - rand(1..100).day, exercise_type_id: types.sample.id, duration: rand(1..200))
end
