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
@button_one= FXButton.new(self,"Description Rooms")
@button_three=FXButton.new(self,"Add client")
@button_for=FXButton.new(self,"Delete Client")
@button_five=FXButton.new(self,"show rooms")
@button_two= FXButton.new(self,"Exit")
@button_one.connect(SEL_COMMAND,method(:show_Des))
@button_two.connect(SEL_COMMAND,method(:Exit))
end
def create
super
show(PLACEMENT_SCREEN)
end
def Exit(sender,sel,ptr)
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





