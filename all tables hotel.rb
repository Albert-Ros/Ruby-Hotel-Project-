require 'mysql2'
include Mysql2
current_path = File.dirname(__FILE__)
require "#{current_path}/CLASS List Rooms.rb"
class Hotel_DB
@client
@@instance=nil 
attr_accessor :list
    private def initialize
		self.list=List_Rooms.new
		puts "control 1"
		@client = Client.new(:username => 'albert.ros', :password => 'Qaz55555', :host => 'localhost')
		puts "control 2"
		@client.query("USE hotel")
		puts "control 3"
      end
	  
	  def self.get_instance
	  @@instance|=Hotel_DB.new
	  return @@instance
	  end
    
		def creat_BD_tabales
  #first table 
        #/@client.query("CREATE TABLE info_clients(
        #guest_id integer not null auto_increment,
        #Last_Name varchar(50),
		#First_Name varchar(50),
        #Patronymic varchar(50),
        #primary key (guest_id))")/
		#puts "control 4"
		#second table
		#/@client.query("CREATE TABLE Rooms(Room_ID integer not null auto_increment,
		#Room_Name varchar(55),
		#Room_Desc varchar(100),
		#primary key(Room_ID))")/
		#puts "control 9"
		#third table
		#/@client.query("CREATE TABLE Booking (Booking_ID integer not null auto_increment,
		#First_Name varchar(55),
		#Last_Name varchar(55),
		#Arrival_date date,
		#Departure_date date,
		#primary key(Booking_ID))")/
		#puts "control 14"
  end
     def insert_base_1
		#/@client.query("insert into info_clients(guest_id,Last_Name,First_Name,Patronymic) values (null, 'Ivanov', 'Boris','Sergeevich')")/
		#puts "control 5"
		#/@client.query("insert into info_clients(guest_id,Last_Name,First_Name,Patronymic) values (2, 'Krilatov', 'Sergei','Borisovich')")/
		#puts "control 6"
		#/@client.query("insert into info_clients(guest_id,Last_Name,First_Name,Patronymic)values(3,'Belova','Marina','Aleksandrovna')")/
		#puts "control 7"
	 end
	 def insert_base_2
	 	#@client.query("insert into Rooms(Room_ID,Room_Name,Room_Desc)values(null,'Ordinary','Обычный однокомнатный номер  Включает: wi-fi, кровать, завтрак,цена 1000р в сутки')")
        #puts "control 10"
        #@client.query("insert into Rooms(Room_ID,Room_Name,Room_Desc)values(null,'Middle-Luxe','Полу-Люкс номер  есть: две кравати,зал,кухня,бар,Завттрак,Wi-Fi,ванная, цена 3500p в сутки')")
		puts "control 11"
		#@client.query("insert into Rooms(Room_ID,Room_Name,Room_Desc)values(null,'Luxe','Люкс номер есть: 3 спальни,детская,Wi-Fi,безлимитный пропуск на вечерние тусовки цена 5500р в сутки')")
		puts"control 12"
	 end
	 def insert_base_3
	 	#@client.query("insert into Booking(Booking_ID,First_Name,Last_Name,Arrival_date,Departure_date)values(null,'Pavel','Volia','2020-12-31','2020-01-07')")
		puts "control 15"
	 end
	 def print_values_table_1(c)
	 r_c=@client.query("select * from  info_clients")
		r_c.each do |clients|
		c=r_c
		  puts clients["guest_id"],clients["Last_Name"],clients["First_Name"],clients["Patronymic"]
		 end
		puts "control 8"
	 end
	 
	 def print_values_table_2
	 	 r_r=@client.query("select * from  Rooms")
		 r_r.each do |rooms|
		 puts rooms["Room_ID"],rooms["Room_Name"],rooms["Room_Desc"]
         end
        puts "control 13"
	 end
	 def print_values_table_3
	 r_b=@client.query("select * from Booking")
	 r_b.each do|book|
	 puts book["Booking_ID"],book["First_Name"],book["Last_Name"],book["Arrival_date"],book["Departure_date"]
	 end
	end
	def read_clients
	self.list.read_clients
	end
	def read_rooms 
	self.list.read_rooms
	end
	def read_booking
	self.list.read_booking
	end
end
