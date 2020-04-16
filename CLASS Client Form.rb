<<<<<<< HEAD
class Client_Form 
  attr_accessor :name,:last_name,:sec_name
@name 
@sec_name
  @last_name
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
	  def pol
	puts "Введите ваш Пол М или Ж "
	m_w=gets.capitalize
	if m_w=="М"
	puts "Вы мужчина"
	else puts "Вы Женшина"
	end
	end
   end
   a=Client_Form.new("Ali Baba Hor")
   a.pol
   a.check_fio
   puts a.name, a.sec_name.capitalize, a.last_name.capitalize
=======

   
>>>>>>> parent of b66688b... Class Client Form
   
   
  