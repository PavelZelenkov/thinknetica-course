class Station # Станция
  attr_reader :trains, :name

  def initialize(name)
    @name = name
    @trains = []
  end
  
  def add_train(train) # добавление поездов из класса Train
    @trains << train
  end

  def send_train(train) # отправление поездов
    @trains.delete(train)
  end

  def show_train # возвращает список всех поездов на станции
    @trains.each { |i| puts i.type }
  end

  def train_type(type) # возвращает список всех поездов на станции по типу
    t = trains.select { |tr| tr.type == "#{type}" }
    t.each { |i| puts i.type }
    puts t.size
  end
end
