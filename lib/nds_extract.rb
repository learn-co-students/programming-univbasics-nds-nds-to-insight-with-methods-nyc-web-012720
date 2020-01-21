$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  totals = 0
  #director_name = director_data[:name]
  #totals[director_name] = 0
  movie_index = 0

  while movie_index < director_data[:movies].length do
      totals += director_data[:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    totals
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  director_index = 0
  result = {}
  while director_index < nds.length do
    director = nds[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end
