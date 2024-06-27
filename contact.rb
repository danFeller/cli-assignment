class Contact
  def initialize(number, name, contact_type)
    @number = number
    @name = name
    @contact_type = contact_type
  end
  
  def format
    puts "#{@number} | #{@name} | #{@contact_type}"
  end
end
