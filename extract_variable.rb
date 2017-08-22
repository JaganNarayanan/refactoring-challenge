# extract_variable.rb
#https://refactoring.com/catalog/extractVariable.html

username = "Alice"

if ( username.length > 3 && username.length <= 7 ) || ( username.downcase.start_with?("a", "e", "i", "o", "u") )
	puts "Congratulations #{username}! You won 1 million dollars!"
else
	puts "Please try again!"
end
# _______________________________________________________
# Refactored code
username = "Alice"

min_length = (username.length > 3)
max_length = (username.length <= 7)
downcase = username.downcase.start_with?("a", "e", "i", "o", "u")

if min_length && max_length || (downcase)
	puts "Congratulations #{username}! You won 1 million dollars!"
else
	puts "Please try again!"
end
