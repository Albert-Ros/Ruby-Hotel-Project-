current_path = File.dirname(__FILE__)
require "#{current_path}/all tables.rb"
class List_Rooms
@client

def initialize()

@client= Hotel_DB.new
end
def read_clients
guest_id=[]
last_Name=[]
first_Name=[]
patronymic=[]
r = client.query("SELECT * From info_clients")
i=0
r.each do |theme|
			puts "Parsing_data"
			guest_id[i]= theme["guest_id"] 
			last_Name[i]=theme["Last_Name"]
			first_Name[i]=theme["First_Name"]
			patronymic[i]=theme["Patronymic"]
			i+=1
		end
		return puts guest_id,last_Name,first_Name,patronymic
end
def read_rooms
        room_ID=[]
		room_Name=[]
		room_Desc=[]
r = client.query("SELECT * From Rooms")
i=0
  r.each do |theme|
  puts "parsing data 2"
  room_ID[i]=theme["Room_ID"]
  room_Name[i]=theme["Room_Name"]
  room_Desc[i]=theme["Room_Desc"]
        end
return puts room_ID,room_Name,room_Desc 
end
def read_booking
    booking_ID=[]
	first_Name=[]
		last_Name =[]
		arrival_date =[]
		departure_date=[]
r = client.query("SELECT * From booking")
i=0
 r.each do |theme|
  puts "parsing data 3"
     booking_ID[i]=theme["Booking_ID"]
    first_Name[i]=theme["First_Name"]
  last_Name[i]=theme["Last_Name"]
  arrival_date[i]=theme["Arrival_date"]
   departure_date[i]=theme["Departure_date"]
       end
  return puts booking_ID,first_Name,last_Name,arrival_date,departure_date
end
end





