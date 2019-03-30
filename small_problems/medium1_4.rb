def lights(number_of_lights)
  hash = {}
  for i in 1..number_of_lights
    hash[i] = 'off'
  end
  hash
end

def lights_on(lights)
  lights.select {|light, status| status == 'on'}.keys
end

def switch_every_nth(lights, nth)
  lights.each do |light, status|
    if light % nth == 0
      lights[light] = (status == 'off') ? 'on' : 'off'
    end
  end
end

def toggle_lights(number_of_lights)
  light_hash = lights(number_of_lights)
  1.upto(number_of_lights) do |iteration|
    switch_every_nth(light_hash, iteration)
  end

  lights_on(light_hash)
end

p toggle_lights(5)
p toggle_lights(10)
p toggle_lights(1000)
