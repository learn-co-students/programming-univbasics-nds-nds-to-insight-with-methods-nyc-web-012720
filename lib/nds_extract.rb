$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movie_counter = 0
  gross = 0
  while movie_counter < director_data[:movies].length do
    gross += director_data[:movies][movie_counter][:worldwide_gross]
    movie_counter += 1  
  end
  gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  director_counter = 0
  while director_counter < nds.length do
    director_name = nds[director_counter][:name]
    result[director_name] = gross_for_director(nds[director_counter])
    director_counter += 1
  end
  result
end
