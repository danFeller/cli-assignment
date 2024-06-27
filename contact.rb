class Contact
  @@num_of_contacts = 0
  def initialize(number, name, contact_type)
    @number = number
    @name = name
    @contact_type = contact_type
    @@num_of_contacts = @@num_of_contacts + 1
  end
  
  def format
    puts "#{@number} | #{@name} | #{@contact_type}"
  end
end
