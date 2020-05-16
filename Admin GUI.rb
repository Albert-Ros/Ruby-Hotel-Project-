require 'fox16'
include Fox
current_path = File.dirname(__FILE__)
require "#{current_path}/class photo hotel.rb"
require "#{current_path}/Class photo view.rb"
require "#{current_path}/Class List Rooms.rb"
class HOTEL_Admin < FXMainWindow
def initialize(app)
super(app, "HOTEL ELEON administration" , :width => 600, :height => 400)
photo = Photo_hotel.new("ordinary.jpg" )
photo_view = PhotoView.new(self, photo)
@button_two= FXButton.new(self,"Description Rooms")
@button_one= FXButton.new(self,"Exit")
@button_two.connect(SEL_COMMAND,method(:show_Des))
@button_one.connect(SEL_COMMAND,method(:onclick))
simple = FXTextField.new(self, 19, nil, 10,
 JUSTIFY_CENTER_X|FRAME_SUNKEN|
 FRAME_THICK|LAYOUT_SIDE_TOP)
 simple.text = "введите ФИО клиента "
end
def create
super
show(PLACEMENT_SCREEN)
end
def onclick(sender,sel,ptr)
app.exit
end
def show_Des(sender,sel,ptr)

end
end

if __FILE__ == $0
FXApp.new do |app|
HOTEL_Admin.new(app)
app.create
app.run
end
end





