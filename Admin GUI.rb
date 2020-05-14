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
end
def create
super
show(PLACEMENT_SCREEN)
end
end
if __FILE__ == $0
FXApp.new do |app|
ListPhotoRooms.new(app)
app.create
app.run
end
end





