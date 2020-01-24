$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  require 'pp'
  pp director_data
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  grand_total = 0
row_index = 0
while row_index < vm.length do
  column_index = 0
  while column_index < vm[row_index].length do
    inner_len = vm[row_index][column_index].length
    inner_index = 0
    while inner_index < inner_len do
      # Explanation!
      # vm[row][column][spinner]
      # spinner is full of Hashes with keys :price and :name
      grand_total += vm[row_index][column_index][inner_index][:price]
      inner_index += 1
    end
    column_index += 1
  end
  row_index += 1
end
 
p grand_total
end
