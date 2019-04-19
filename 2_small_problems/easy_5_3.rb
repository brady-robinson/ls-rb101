MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def after_midnight(time)
  array = time.split(":").map(&:to_i)
  hours = array[0]
  minutes = array[1]

  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time)
  minutes = MINUTES_PER_DAY - after_midnight(time)
  return 0 if minutes == MINUTES_PER_DAY
  minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') #== 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0