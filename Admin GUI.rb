require 'fox16'
include Fox
current_path = File.dirname(__FILE__)
require "#{current_path}/class photo hotel.rb"
require "#{current_path}/Class photo view.rb"
class ListPhotoRooms < FXMainWindow
def initialize(app)
super(app, "HOTEL ELEON administration" , :width => 600, :height => 400)
photo = Photo_hotel.new("ordinary.jpg" )
photo_view = PhotoView.new(self, photo)
@button_one= FXButton.new(self,"я кнопка ")
@button_one.connect(SEL_COMMAND,method(:onclick))
end
def create
super
show(PLACEMENT_SCREEN)
end
def onclick(sender,sel,ptr)
app.exit
end
end
if __FILE__ == $0
FXApp.new do |app|
ListPhotoRooms.new(app)
app.create
app.run
end
end





