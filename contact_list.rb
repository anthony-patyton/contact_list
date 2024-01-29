@contact = {}

def display_contact()
  puts "Name\t\tContact Number"
  @contact.each do |key, value|
    puts "#{key}\t\t #{value}"
  end
end

while true
  puts "-" * 100
  puts " 1. Add new contact\n 2. Search new Contact\n 3. Display contacts\n 4. Edit Contacts\n 5. Delete Contacts\n 6. Exit\n"
  puts "Enter your choice"
  choice = gets.chomp.to_i 
  puts "-" * 100 #cleaner code terminal
  if choice == 1
    puts "Enter Name"
    first_name = gets.strip
    puts "phone number"
    phone_num = gets.strip
    @contact[first_name] = phone_num
    #display the contact they created
  elsif choice == 2
    puts choice
  elsif choice == 3
    display_contact()
  elsif choice == 4
    puts choice
  elsif choice == 5
    puts choice
  elsif choice == 6
    puts "Quitting Application" + "." * 100
    return
  else
    puts "-" * 100
    puts "Wrong input, please type 1, 2, 3, 4, 5, or 6"
    puts "-" * 100
  end
end
