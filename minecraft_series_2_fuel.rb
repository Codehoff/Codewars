def calc_fuel(n) 
    fuel_options = {
      :lava => 0,
      :blaze_rod => 0,
      :coal => 1,
      :wood => 0,
      :stick => 0
    }
    fuel_needed = n*11
    fuel_options[:lava] = fuel_needed / 800
    fuel_left_after_lava = fuel_needed - fuel_options[:lava] * 800
    
    fuel_options[:blaze_rod] = fuel_left_after_lava / 120
    fuel_left_after_blaze = fuel_left_after_lava - fuel_options[:blaze_rod] * 120 
    
    fuel_options[:coal] =  fuel_left_after_blaze / 80
    fuel_left_after_coal = fuel_left_after_blaze - fuel_options[:coal] * 80
    
    fuel_options[:wood] = fuel_left_after_coal / 15
    fuel_left_after_wood = fuel_left_after_coal - fuel_options[:wood] * 15
    
    fuel_options[:stick] = fuel_left_after_wood / 1
    
    fuel_options
end