# bottles of beer math challenge

# def bottles_of_beer bottles
#   if bottles > 1
#     puts "#{bottles} of beer on the wall. take one down passit around #{bottles -= 1} bottles of beer on the wall"
#       bottles_of_beer bottles
#   else
#     puts "#{bottles} of beer on the wall. take one down pass it around no more bottles of beer on the wall"
#   end
# end
# bottles_of_beer 99

# deaf grandma challenge
# while true
#   string = gets.chomp.downcase
#   puts "HUH?! SPEAK UP, SONNY"
#   puts string = string.upcase
#   break if string == "BYE"
#   end
#   year = "19" + rand(30..50).to_s
#   puts "NO, NOT SINCE #{year}"
# end

# leap year challenge

# def leap_year
#   puts "please enter a starting year"
#   start_year = gets.chomp
#   puts "please enter an ending year"
#   end_year = gets.chomp
#   years = (start_year..end_year).to_a
#   years.each do |year|
#     if (year.to_i)%4 == 0
#       puts year
#     elsif (year.to_i)%400 == 0
#       puts year
#     end
#   end
# end
# leap_year

# building and sorting array

# puts "give me a word and I'll sort them"
# words = []
# while true
#   word = gets.chomp
#   break if word.empty?
#   words << word
#   end
#
# puts "here are your words sorted"
# puts words.sort

# table of contents
# def table_of_contents
#   line_width = 100
#   puts "table of contents".center(line_width)
#   puts "chapter 1: getting started".ljust(line_width/2) + "page 1".rjust(line_width/2)
#   puts "chapter 2: numbers".ljust(line_width/2) + "page 9".rjust(line_width/2)
#   puts "chapter 3: letters".ljust(line_width/2) + "page 13".rjust(line_width/2)
# end


# table_of_contents - revisited

# def writes_contents
#   title = 'table of contents'
#   toc =  [['getting started', 1],
#           ['numbers', 9],
#           ['letters', 13]]
#   puts title.center(60)
#   puts
#   toc.each_with_index do |chapter, indx|
#     name, page = chapter
#     chap_num = indx + 1
#     beginning = "Chapter #{chap_num}:  #{name}"
#     ending = "page #{page}"
#     puts beginning.ljust(40) + ending.rjust(20)
#   end
# end
# writes_contents

# survey questions - revisited

# def ask question
#   while true
#     puts question
#     reply = gets.chomp.downcase
#     return true if reply == "yes"
#     return false if reply == "no"
#     puts "please answer \"yes\" or \"no\"."
#     end
#   end
# puts (ask ("do you like tacos?"))

# old school roman numerals

# def make_roman_numerals number
#   roman = ""
#   roman = roman << "M" * (number / 1000)
#   roman = roman << "L" * (number %1000 / 500)
#   roman = roman << "C" * (number % 500 / 100)
#   roman = roman << "L" * (number % 100 / 50)
#   roman = roman << "X" * (number % 50 / 10)
#   roman = roman << "V" * (number % 10 / 5)
#   roman = roman << "I" * (number % 5 / 1)
#   roman
# end
# puts (make_roman_numerals (1999))

# Modern Roman Numerals

# def make_modern_roman_numerals number
#   thous = (number / 1000)
#   hunds = (number % 1000 / 100)
#   tens = (number % 100 / 10)
#   ones = (number % 10 )
#   roman = "M" * thous
#   if hunds == 9
#     roman = roman + "CM"
#   elsif hunds == 4
#     roman = roman " CD"
#   else
#     roman = roman + "D" * (number % 1000 / 500)
#     roman = roman + "C" * (number % 500 / 100)
#   end
#   if tens == 9
#     roman = roman + "XC"
#   elsif tens == 4
#     roman = roman + "XL"
#   else
#     roman = roman + "L" * (number % 100 / 50)
#     roman = roman + "X" * (number % 50 / 10)
#   end
#   if ones == 9
#     roman = roman + "IX"
#   elsif ones == 4
#     roman = roman "IV"
#   else
#     roman = roman + "V" * (number % 10 / 5)
#     roman = roman + "I" * (number % 5 / 1)
#   end
#   roman
# end
# puts (make_modern_roman_numerals (1999))

# Recusion - factorial

# def calculate_factorial number
#   if number < 0
#     "Please enter a positive number"
#   end
#   if number == 0
#     1
#   else
#     number * calculate_factorial(number-1)
#   end
# end
# puts calculate_factorial(3)

# Recursion - sorting algorithm
def sorting_algorithm array
  if array.length <= 1
    return array
  end
  middle = array.pop
  less = array.select { |e| e < middle }
  more = array.select { |e| e >= middle }

  sorting_algorithm(less) + [middle] + sorting_algorithm(more)
end
  puts(sorting_algorithm(["bear", "pear", "lima", "apple"]))
