class List_Rooms
  attr_accessor :status_room
  @description
  @rooms
def initialize(str)
puts "Список Номеров"
@rooms=str.split(',')
puts @rooms[0],@rooms[1],@rooms[2],"сейчас все номера свободны "
end
  def show_description
puts "введите цифру от 1 до 3 для просмотра описания номеров"
puts "1 - ordinary room, 2 - middle-luxe-room, 3 - luxe room"
@description=gets.to_i
  case(@description)
    when(1)
puts "Обычный однокомнатный номер с видом на пляж, есть: wi-fi,
душевая кабина,телевизор, двух-спальная кравать завтрак включен,цена 1000р в сутки"
    when(2)
puts "Полу-Люкс номер с видом на пляж есть: две двух-спальных кравати,
гостинная,кухня,mini-бар,шветский стол,Wi-Fi,ванная комната, цена 3500p в сутки"
    when(3)
puts "Люкс номер с видом на пляж есть: 3 спальни,
гостинная,кухня,mini-бар,детская,шветский стол,Wi-Fi,Джакузи,
по желанию можно вызвать самилье в номер и попробовать различные вина,
вам предоставляеся безлимитный пропуск на все вечерние и пляжные развлечения,цена 5500р в сутки"
    end
  end
  def status_change
  puts "Введите порядковый номер комнаты  и статус,на которой хотите изменить: 
  1-ordinary,2-middle-luxe,3-luxe 
   статус: 1-свободен, 0-занят"
  number=gets.to_i
  status_room=gets.to_i
  if status_room==1
  puts "номер #{number} свободен"
  else 
  puts "номер #{number} занят"
  end
  end
end
a=List_Rooms.new("ordinary,middle-luxe,luxe")
a.show_description
a.status_change
