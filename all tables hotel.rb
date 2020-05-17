require 'mysql2'
include Mysql2
 puts "control 1"
client = Client.new(:username => 'albert.ros', :password => 'Qaz55555', :host => 'localhost')
 puts "control 2"
client.query("USE hotel")
  puts "control 3"
/client.query("CREATE TABLE info_clients(
        guest_id integer not null auto_increment,
        Last_Name varchar(50),
		First_Name varchar(50),
        Patronymic varchar(50),
        primary key (guest_id))")/
		puts "control 4"
		/client.query("insert into info_clients(guest_id,Last_Name,First_Name,Patronymic) values (null, 'Ivanov', 'Boris','Sergeevich')")/
		puts "control 5"
		/client.query("insert into info_clients(guest_id,Last_Name,First_Name,Patronymic) values (2, 'Krilatov', 'Sergei','Borisovich')")/
		puts "control 6"
		/client.query("insert into info_clients(guest_id,Last_Name,First_Name,Patronymic)values(3,'Belova','Marina','Aleksandrovna')")/
		puts "control 7"
		r=client.query("select * from  info_clients")
		r.each do |clients|
		  puts clients["guest_id"],clients["Last_Name"],clients["First_Name"],clients["Patronymic"]
		 end
		puts "control 8"
		/client.query("CREATE TABLE Rooms(Room_ID integer not null auto_increment,
		Room_Name varchar(55),
		Room_Desc varchar(100),
		primary key(Room_ID))")/
		puts "control 9"
		#client.query("insert into Rooms(Room_ID,Room_Name,Room_Desc)values(null,'Ordinary','Обычный однокомнатный номер  Включает: wi-fi, кровать, завтрак,цена 1000р в сутки')")
        puts "control 10"
        client.query("insert into Rooms(Room_ID,Room_Name,Room_Desc)values(null,'Middle-Luxe','Полу-Люкс номер  есть: две кравати,зал,кухня,бар,Завттрак,Wi-Fi,ванная, цена 3500p в сутки')")
		puts "control 11"