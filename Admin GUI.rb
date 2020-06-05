current_path = File.dirname(__FILE__)
require "#{current_path}/controler.rb"
require 'fox16'
include Fox
class HOTEL_Admin < FXMainWindow
def initialize(app)
@mvc= Controller_admin.new("dmin", "")
super(app, "HOTEL ELEON administration" , :width => 600, :height => 400)
photo = Photo_hotel.new("ordinary.jpg" )
photo_view = PhotoView.new(self, photo)
@button_one= FXButton.new(self,"show clients")
@button_two=FXButton.new(self,"show rooms")
@button_trhee=FXButton.new(self,"show Booking")
@button_for= FXButton.new(self,"Exit")
@button_one.connect(SEL_COMMAND,method(:show_clients))
@button_two.connect(SEL_COMMAND,method(:show_rooms))
@button_trhee.connect(SEL_COMMAND,method(:show_booking))
@button_for.connect(SEL_COMMAND,method(:exit))
end
def create
super
show(PLACEMENT_SCREEN)
end
def show_clients(sender,sel,ptr)
@mvc.show_clients
end
def show_rooms(sender,sel,ptr)
@mvc.show_rooms
end
def show_booking(sender,sel,ptr)
@mvc.show_booking
end
def Exit(sender,sel,ptr)
app.exit
end
end
if __FILE__ == $0
FXApp.new do |app|
HOTEL_Admin.new(app)
app.create
app.run
end
end





