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
		client.query("insert into info_clients(guest_id,Last_Name,First_Name,Patronymic) values (null, 'Ivanov', 'Boris','Sergeevich')")
		puts "control 5"