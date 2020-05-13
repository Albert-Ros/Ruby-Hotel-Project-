current_path = File.dirname(__FILE__)
require "#{current_path}/Class List Rooms.rb"
class Client_Form 
  attr_accessor :name,:last_name,:sec_name
  @pos1
  @pos2
  @day
  @month
  @year
   def initialize(str)
  ar=str.split
  self.name=ar[0]
  self.sec_name=ar[1]
  self.last_name=ar[2]
  self.check_fio
   end
      def check_fio
        if (self.name.size<=45)&&(self.sec_name.size<=45)&&(self.last_name.size<=45)
          puts "size check is successful"
        else self.initialize(b=gets)
          end
          if (self.name[/^\d+$/])||(self.sec_name[/^\d+$/])||(self.last_name[/^\d+$/])
            self.initialize(b=gets)
            else puts "number check  is successful"
        end 
      end
	  def gender(m_w)
	if m_w==1
	puts "Вы мужчина"
	else puts "Вы Женщина"
	end
	end
	def passport(pas)
     @pos1=pas[0]
     @pos2=pas[1]
     if ((@pos1[/^\d+$/])&&(@pos2[/^\d+$/]))&&((@pos1.size==4)&&(@pos2.size==6))
     puts "Данные Корректны! серия - #{@pos1} Номер - #{@pos2}"
     else self.passport(pos=gets.split)
     end
	 puts "Введите дату Рождения,используя разделитель- ."
	 self.birth_date(data_born=gets.split('.'))
	end
	def birth_date(data_str)
	@day=data_str[0]
	@month=data_str[1]
	@year=data_str[2]
	if @day[/^[1-31]/]&&@month[/^\d+$/]&&@year[/^\d+$/]
	puts "Your birth date is #{@day}.#{@month}.#{@year}"
	else self.birth_date(data_born=gets.split('.'))
	end
	end
	end
   
   
   
   class Client_Registration < Client_Form
    def emaill_check(emaill)
	 emaill_regex=/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	 if(emaill_regex)
	 puts "emaill is successful"
	 else self.emaill_check(emaill=gets)
	 end
   end
   	 def phone_check(phone)
	 phone_regex=/\+([\d]){3}-([\d]){9}/
	 if(phone_regex)
	 puts "phone is successful"
	 else self.phone_check(phone=gets)
	 end
	 end
	 def length_of_stay(time)
	 begin_1=time[0]
	 end_1=time[1]
	 if begin_1[/^\d/]&&end_1[/^\d/]
	 puts "сроки - с #{begin_1} по #{end_1}"
	 else self.length_of_stay(time=gets.split())
	 end
	 end
  end
   
   
   puts "Введите Ваше ФИО"
   a=Client_Form.new(b=gets)
   puts "Введите ваш Пол 1-Муж или 0-Женщ "
   a.gender(ger=gets.to_i)
   puts "Введте серию и номер паспорта через ПРОБЕЛ"
   a.passport(pos=gets.split)/
   puts "Введите данные для завершения Бронирования номера "
    puts "Введите Ваше ФИО"
   b=Client_Registration.new(b=gets)
      puts "Введите ваш E-mail"
   b.emaill_check(emaill=gets)
    puts "Введите ваш телефон"
   b.phone_check(phone=gets)
   puts "Введите сроки пребывания в отеле. Например 20-03 22-03"
   b.length_of_stay(time=gets.split())
   puts a.name.capitalize, a.sec_name.capitalize, a.last_name.capitalize
   puts "Ваши Данные Успешно Внесены, приятного пребывания в отеле"  
   puts "Выберите действие с номерами комнат: 
   1 - показать список номеров
   2- показать описание номеров
   3 - изменить статус номера
   4- добавить номер
   5- удалить номер"
   choose= gets.to_i
   case(choose)
    when(1)
c=List_Rooms.new("ordinary,middle-luxe,luxe")
    when(2)
	c=List_Rooms.new("ordinary,middle-luxe,luxe")
	puts "Введите цифру от 1 до 3 для просмотра описания номеров"
puts "1 - ordinary room, 2 - middle-luxe-room, 3 - luxe room"
c.show_description(des=gets.to_i)
    when(3)
	c=List_Rooms.new("ordinary,middle-luxe,luxe")
	puts "Введите порядковый номер комнаты  и статус,на который хотите изменить: 
  1-ordinary
  2-middle-luxe
  3-luxe 
   статус: 
   1-свободен
   0-занят"
c.status_change(n=gets.to_i,s=gets.to_i)
when(4)
c=List_Rooms.new("ordinary,middle-luxe,luxe")
puts "Введите тип номера,который желаете добавить в список"
c.add_room(elm=gets)
when(5)
c=List_Rooms.new("ordinary,middle-luxe,luxe")
puts "Какой номер удалить из списка?"
c.delete_room(elm=gets)
end