class Station
  attr_reader :name, :trains
  
  def initialize(name)
    @name = name
    @trains = []
  end
  
  def add_train(train)
    trains << train
  end
  
  def del_train(train)
    trains.delete(train)
  end
  
  def get_trains_type(train_type)
    trains.select{|x|x.train_type == train_type}
  end
end
