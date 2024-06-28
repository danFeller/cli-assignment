require_relative "contact"
class PhoneBook
  def initialize
    @contacts = []
  end
  def open
    loop do
      puts "Contact Log: Press 1 to Create a Contact, Press 2 to view all Contacts"
      choice = gets
      case choice.to_i
        when 1
          c = self.create
          @contacts.push(c)
        when 2
          puts self.contact_log
        when 3
          puts "Log Closed"
          break
        else "Invalid number or other character entered"
      end
    end
  end

  
  def create
    puts "Enter a Phone Number"
    number = gets
    puts "Enter a name"
    name = gets
    puts "Is this a Mobile or Home contact?"
    contact_type = gets
    puts "Contact of the name #{name} created."
    Contact.new(number.to_i, name.strip, contact_type.downcase.capitalize)
  end
  def contact_log
    puts "----------- #{@contacts.length} Contacts Known -----------"
    @contacts.each do |c|
      puts c.format
    end
    puts "----------------------------------------"
  end
end
