$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }


def gross_for_director(director_data)
  movie_total = 0 
  i = 0
  while i < director_data[:movies].length do 
    movie_total += director_data[:movies][i][:worldwide_gross]
    i+=1 
  end
  movie_total
end

def directors_totals(nds)
  result = {}
  i = 0
  while i < nds.length do 
    result[nds[i][:name]] = gross_for_director(nds[i])
    i += 1
  end
 result
end

# def all_grosses(nds)
#   totals_arr = []
#   i = 0 
#   while i < nds.length do 
#     total_gross = 0
#     j = 0 
#     while j < nds[i][:movies].length do 
#       total_gross = total_gross + nds[i][:movies][j][:worldwide_gross]
#       j += 1 
#     end 
#     totals_arr << total_gross
#     i += 1 
#   end
# totals_arr
# end





