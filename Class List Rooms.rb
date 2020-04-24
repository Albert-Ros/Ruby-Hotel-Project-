class List_Rooms
  attr_accessor :status_room
  @description
  @rooms
def initialize(str)
puts "Список Номеров"
@rooms=str.split(',')
puts @rooms[0],@rooms[1],@rooms[2]
end
end
a=List_Rooms.new("ordinary,luxe,middle-luxe")
