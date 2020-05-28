current_path = File.dirname(__FILE__)
require "#{current_path}/all tables hotel.rb"
require "#{current_path}/Admin GUI.rb"
require "#{current_path}/Admin model.rb"
#require "#{current_path}/term_admin.rb"
require 'fox16'
include Fox

class Controller_admin_super
	attr_accessor :admin_role, :admin, :data, :application, :char
	
	def initialize(admin_role, admin)
		self.admin_role= admin_role
		self.admin=admin
		self.char=0
	end	

end 

class Controller_admin < Controller_admin_super

	def initialize(admin_role="admin", admin="admin")
		puts "Controller_admin.initialize: start work as admin"
		super
		puts "Controller_admin.initialize: Admin is saved"
		self.data= Hotel_DB.new
		
			self.application = FXApp.new
			puts "Controller_admin.initialize: foxApp is initialized"
			@main = FXMainWindow.new(@application,self)
			puts "Controller_admin.initialize: ChoozeRezhimWindow is initialized"
			@application.create
			puts "Controller_admin.initialize: foxApp is created"
			@main.show(PLACEMENT_SCREEN)
			puts "Controller_admin.initialize: ChoozeRezhimWindow is drawn"
			@application.run
					
		
		
		
	end

	def on_admin_close
		@main.destroy
		self.application.~FXApp
	end

	def show_rooms
		puts "Controller_admin.show_themes: start"
		a,b,c = self.Hotel_DB.print_values_table_1(O)
		puts "Controller_admin.show_themes: themes are read"
		lt= List_Themes.new(self.application,self,a,b,c)
	end

	def show_kinds
		puts "Controller_admin.show_kinds: start"
		a,b,c = self.data.read_kinds
		puts "Controller_admin.show_kinds: kinds are read"
		lt= List_Kinds.new(self.application,self,a,b,c)
	end

	def to_s
		self.class.to_s
	end

	def add_theme(obj)

	end

	def on_close(obj,parent)
		obj=nil
		if parent 
			parent.show
		else
			@main.show(PLACEMENT_SCREEN)
		end
	end

	def add_theme_show(obj)
		puts "Controller_admin.add_theme_show: take the ruling"
		ms=Theme.new(self.application,self,obj)
		puts "Controller_admin.add_theme_show: ms of Theme class is created"
		ms.show
	end
end
