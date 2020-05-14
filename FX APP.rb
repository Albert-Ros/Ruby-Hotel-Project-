require 'fox16' #GUI lib 
include Fox # премись
class HelloWindow < FXMainWindow# наследуем свойства главного окна  
def initialize(app) 
super(app, "Hello, World!", :width => 200, :height => 100) 
end 
def create 
super 
show(PLACEMENT_SCREEN)#центровка главного окна при запуске 
end 
end 
app = FXApp.new # object of class fx app 
HelloWindow.new(app) #создание окна 
app.create #создание приложения 
app.run # запуск

