class Client_Form 
  attr_accessor :name,:last_name,:sec_name
  @pos1
  @pos2 
  @m_w
  @data_born
  @day
  @month
  @year
   def initialize()
    puts "Введите Ваше ФИО"
    a=gets
  ar=a.split
  self.name=ar[0]
  self.sec_name=ar[1]
  self.last_name=ar[2]
  self.check_fio
   end
      def check_fio
        if (self.name.size<=45)&&(self.sec_name.size<=45)&&(self.last_name.size<=45)
          puts "size check is successful"
        else self.initialize()
          end
          if (self.name[/^\d+$/])||(self.sec_name[/^\d+$/])||(self.last_name[/^\d+$/])
            self.initialize()
            else puts "number check  is successful"
        end 
      end
	  def gender
	puts "Введите ваш Пол 1-Муж или 0-Женщ "
	@m_w=gets.to_i
	if @m_w==1
	puts "Вы мужчина"
	else puts "Вы Женщина"
	end
	end
	def passport
     puts "Введте серию и номер паспорта через ПРОБЕЛ"
     pos=gets.split
     @pos1=pos[0]
     @pos2=pos[1]
     if ((@pos1[/^\d+$/])&&(@pos2[/^\d+$/]))&&((@pos1.size==4)&&(@pos2.size==6))
     puts "Данные Корректны! серия - #{@pos1} Номер - #{@pos2}"
     else self.passport
     end
	 self.birth_date
	end
	def birth_date
	puts "Введите дату Рождения,используя разделитель- ."
	@data_born=gets.split('.')
	@day=@data_born[0]
	@month=@data_born[1]
	@year=@data_born[2]
	if @day[/^[1-31]/]&&@month[/^\d+$/]&&@year[/^\d+$/]
	puts "Your birth date is #{@day}.#{@month}.#{@year}"
	else self.birth_date
	end
	end
	end
   
   
   
   class Client_Registration < Client_Form
    def emaill_check
     puts "Введите ваш Emaill"
	 emaill=gets
	 emaill_regex=/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	 if(emaill_regex)
	 puts "emaill is successful"
	 else self.emaill_check
	 end
   end
   	 def phone_check
	 puts "Введите ваш телефон"
	 phone=gets
	 phone_regex=/\+([\d]){3}-([\d]){9}/
	 if(phone_regex)
	 puts "phone is successful"
	 else self.phone_check
	 end
	 end
	 def length_of_stay
	 puts "Введите сроки пребывания в отеле. например 20-03 22-03"
	 time=gets.split()
	 begin_1=time[0]
	 end_1=time[1]
	 if begin_1[/^\d/]&&end_1[/^\d/]
	 puts "сроки - с #{begin_1} по #{end_1}"
	 else self.length_of_stay
	 end
	 end
  end
   
   
   
   a=Client_Form.new()
   a.gender
   a.passport
   puts "Введите данные для завершения Бронирования номера "
   b=Client_Registration.new()
   b.emaill_check
   b.phone_check
   b.length_of_stay
   puts a.name.capitalize, a.sec_name.capitalize, a.last_name.capitalize
   puts "Ваши Данные Успешно Внесены, приятного пребывания в отеле"