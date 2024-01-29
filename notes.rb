#Build a Contact list
#Create a menu that allows you to select 1)Create a contact 2)View all contacts  3) Exit
#Menu should loop until the user exits

#Bonus
#Delete a contact
#edit a contact

=begin
while loop having it till the user exits
have an contact list with key value pairs { key: 'value'}
have a method for display the contact list
have a method for delete a contact
puts str.downcase.split(" ").join('-')


while true
  puts "1. Add new contact\n 2. Search new Contact\n 3. Display contacts\n 4. Edit Contacts\n 5. Delete Contacts\n 6. Exit\n"
  puts "Enter your choice"
  choice = gets.chomp.to_i 
  if choice == 1
    puts "enter contact name"
    name = gets.chomp
    puts "enter mobile number"
    phone = gets.chomp
    contact[name] = phone
  elsif choice == 2
    puts "Enter contact Name"
    search_name = gets.chomp
    if contact.has_value?(search_name)
      puts "#{search_name}'s contact number is ", contact[search_name]
    else
      puts "The name is not formed in the contact book"
  elsif choice == 3
    if contact.empty?
      puts "Empty contact book"
    else
      display_contact()
  elsif choice == 4
    puts choice
  elsif choice == 5
    puts choice
  else
    break
  end
end