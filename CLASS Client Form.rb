class Client_Form 
  attr_accessor :name,:last_name,:sec_name
@name 
@sec_name
  @last_name
  @pos1
  @pos2 
  @m_w
   def initialize(a)
    puts "Введите Ваше ФИО"
    a=gets.capitalize
  ar=a.split
  @name=ar[0]
  @sec_name=ar[1]
  @last_name=ar[2]
   end
      def check_fio
        if (@name.size<=45)&&(@sec_name.size<=45)&&(@last_name.size<=45)
          puts "size check it\'s successful"
        else self.initialize("Ali Baba Hor")
          end
          if (@name[/^\d+$/])||(@sec_name[/^\d+$/])||(@last_name[/^\d+$/])
            self.initialize("Ali Baba Hor")
            else puts "number check  it\'s successful"
        end 
      end
<<<<<<< HEAD
	  def pol
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
     puts "Данные Коректны! серия - #{@pos1} Номер - #{@pos2}"
     else self.passport
     end	 
	end
=======
>>>>>>> parent of 80ae19c... Добавлен метод pol для внесения пола человека
   end
   a=Client_Form.new("Ali Baba Hor")
   a.check_fio
   a.passport
   puts a.name.capitalize, a.sec_name.capitalize, a.last_name.capitalize
   puts "Ваши Данные Успешно Внесены"
   
   
   
  