class List_Rooms
  attr_accessor :status_room
  @rooms
def initialize(str)
puts "Список Номеров"
@rooms=str.split(',')
puts @rooms[0],@rooms[1],@rooms[2],"сейчас все номера свободны "
end
  def show_description(description)
  case(description)
    when(1)
puts "Обычный однокомнатный номер с видом на пляж, есть: wi-fi,
душевая кабина,телевизор, двух-спальная, кровать, завтрак включен,цена 1000р в сутки"
    when(2)
puts "Полу-Люкс номер с видом на пляж есть: две двух-спальных кравати,
гостинная,кухня,mini-бар,шведский стол,Wi-Fi,ванная комната, цена 3500p в сутки"
    when(3)
puts "Люкс номер с видом на пляж есть: 3 спальни,
гостинная,кухня,mini-бар,детская комната,шведский стол,Wi-Fi,джакузи в номере,
по желанию можно вызвать сомелье в номер и попробовать различные вина,
вам предоставляется безлимитный пропуск на все вечерние и пляжные развлечения,цена 5500р в сутки"
    end
  end
  def status_change(number,status_room)
  if status_room==1
  puts "номер #{number} свободен"
  else 
  puts "номер #{number} занят"
  end
  end
  def add_room(elem)
  @rooms.push(elem)
  puts @rooms
  end
  def delete_room(pat)
  @rooms.delete(pat)
  puts @rooms
  end
end




