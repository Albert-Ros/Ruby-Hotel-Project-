current_path = File.dirname(__FILE__)
require "#{current_path}/all tables hotel.rb"
require "#{current_path}/Admin GUI.rb"
require "#{current_path}/Admin_model.rb"
#require "#{current_path}/term_admin.rb"
require 'fox16'
include Fox

class Controller_MVC
	attr_accessor :admin_role, :admin, :data, :application, :flag
	
	def initialize(admin_role, user)
		self.user_role= user_role
		self.user= user
		self.flag=0
	end	

end 

class Controller_admin < Controller_MVC

	def initialize(user_role="admin", user="admin")
		puts "Controller_admin.initialize: start work as admin"
		super
		puts "Controller_admin.initialize: user is saved"
		self.data= Hotel_DB.new
		
			self.application = FXApp.new
			puts "Controller_admin.initialize: foxApp is initialized"
			@main = ChoozeRezhimWindow.new(@application,self)
			puts "Controller_admin.initialize: ChoozeRezhimWindow is initialized"
			@application.create
			puts "Controller_admin.initialize: foxApp is created"
			@main.show(PLACEMENT_SCREEN)
			puts "Controller_admin.initialize: ChoozeRezhimWindow is drawn"
			@application.run
					
		
		
		
	end

	def on_admin_close
		app.destroy
		self.application.~FXApp
	end

	def show_clients 
		puts "Controller_admin.show_clients: start"
		a,b,c,d= self.data.read_clients
		puts "Controller_admin.show_clients: clients are read"
		lt= List_Rooms.new(self.application,self,a,b,c,d)
	end

	def show_rooms
		puts "Controller_admin.show_desc: start"
		a,b,c = self.data.read_rooms 
		puts "Controller_admin.show_rooms: rooms are read"
		lt= List_Rooms.new(self.application,self,a,b,c)
	end
	
	def show_booking
	puts "Controller_admin.show_booking: start"
	a,b,c,d,e=self.data.read_booking 
		puts "Controller_admin.show_booking: rooms are read"
		lt= List_Kinds.new(self.application,self,a,b,c,d,e)
	end

	def to_s
		self.class.to_s
	end

	def on_close(obj,parent)
		obj=nil
		if parent 
			parent.show
		else
			application.show(PLACEMENT_SCREEN)
		end
	end
end