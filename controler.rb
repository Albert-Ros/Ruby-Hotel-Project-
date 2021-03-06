current_path = File.dirname(__FILE__)
require "#{current_path}/all tables hotel.rb"
require "#{current_path}/Admin GUI.rb"
require "#{current_path}/Admin model.rb"
require "#{current_path}/CLASS List Rooms.rb"
#require "#{current_path}/term_admin.rb"


class Controller_mvc
	attr_accessor :admin_role, :admin, :data, :application, :char
	
	def initialize(admin_role, admin)
		self.admin_role= admin_role
		self.admin=admin
		self.char=0
	end	

end 

class Controller_admin < Controller_mvc

	def initialize(admin_role="admin", admin="admin")
		puts "Controller_admin.initialize: start work as admin"
		super
		puts "Controller_admin.initialize: Admin is saved"
		self.data= Hotel_DB.new
		
	
					
		
		
		
	end

	#def on_admin_close
	#	@main.destroy
		#self.application.~FXApp
	#end

	def show_rooms
		puts "Controller_admin.show_themes: start"
		a,b,c = self.data.read_rooms
		puts "Controller_admin.show_themes: themes are read"
		lt= List_Themes.new(self.application,self,a,b,c)
	end

	def show_clients
		puts "Controller_admin.show_kinds: start"
		a,b,c,d = self.data.read_clients
		puts "Controller_admin.show_kinds: kinds are read"
		lt= List_Kinds.new(self.application,self,a,b,c,d)
	end
	
	def show_booking
	a,b,c,d,e=self.data.read_booking 
	end

	def to_s
		self.class.to_s
	end


	#def on_close(obj,parent)
	#	obj=nil
	#	if parent 
	#		parent.show
	#	else
	#		@main.show(PLACEMENT_SCREEN)
	#	end
	#end
end
