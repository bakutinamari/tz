class Train
 attr_reader :number, :route, :wagons, :speed

  def initialize(number)
    @number = number
    @wagons = []
    @speed = 0
    @route = nil
    @current_station_index = nil
  end
  
  def speed_up(value)
    @speed += value
  end
  
  def speed_stop
    @speed = 0
  end
  
  def add_wagon
    add_wagon!(wagon) 
  end
  
  def del_wagon
    wagons.pop  if speed = 0 && wagons.size > 0
  end
  
  def add_route(route)
    @route = route
    @current_station_index = 0
  end
  
  def move_forward
    @current_station_index += 1 if @current_station_index < route.stations.size
    end
 
  
  def move_backward
    @current_station_index -= 1 if @current_station_index > 0
    end
  
  def get_current_station
      route.stations[@current_station_index]
  end
  
  def get_next_station
     route.stations[@current_station_index + 1]
  end
  
  def get_prev_station
     route.stations[@current_station_index - 1]
  end
  
  protected
  
  def type
     'unset'
  end
  
  def add_wagon!(wagon)
    wagons.push(wagon) if wagon.type == type
  end
end
