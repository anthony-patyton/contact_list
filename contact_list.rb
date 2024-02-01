require 'colorize'

@contact = {}

def display_contact()
  puts "Name\t\tContact Number"
  @contact.each do |key, value|
    puts "#{key}\t\t #{value}"
  end
end

while true
  puts ("-" * 100).colorize(:light_blue)
  puts " 1. Add new contact\n 2. Search new Contact\n 3. Display contacts\n 4. Edit Contacts\n 5. Delete Contacts\n 6. Exit\n".colorize(:green)
  puts "Enter your choice"
  choice = gets.chomp.to_i 
  puts ("-" * 100).colorize(:light_blue) #cleaner code terminal
  if choice == 1
    puts "Enter Name"
    first_name = gets.strip
    puts "phone number"
    phone_num = gets.strip
    #this is where one would check if the user information is a str and place the value into @contact
    @contact[first_name] = phone_num
  elsif choice == 2
    puts "Please type their first name"
    search_name = gets.strip
    puts "Searching contact for '#{search_name}'" + '.' * 50
    if @contact.has_key?(search_name.to_s) 
      p "#{search_name}'s contact number is #{@contact[search_name]}"
    else
      puts "Nothing came up"
    end
  elsif choice == 3
    display_contact()
  elsif choice == 4
    puts "Enter contact name to be edited"
    edit_contact_name = gets.strip
    if (@contact.has_key?(edit_contact_name.to_s))
      puts "Enter contact number:"
      edit_contact_phone = gets.strip
      @contact[edit_contact_name] = edit_contact_phone
    else
      puts "Contact #{edit_contact_name} does not exist"
    end
  elsif choice == 5
    puts "Enter contact name to be deleted:"
    delete_contact_name = gets.strip
    if (@contact.has_key?(delete_contact_name))
      @contact.delete(delete_contact_name)
      puts "#{delete_contact_name}'s contact is being deleted..." 
    else
      puts "Contact does not exist"
    end
  elsif choice == 6
    puts "Quitting Application" + "." * 100
    return
  else
    puts ("-" * 100).colorize(:light_blue)
    puts "Wrong input, please type 1, 2, 3, 4, 5, or 6"
  end
end

#touch Gemfile && gitignore -> bundle