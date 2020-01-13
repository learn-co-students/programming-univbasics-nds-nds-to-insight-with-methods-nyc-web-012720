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


# def directors_totals(nds)

#   # result = {}
#   # i = 0
#   # while i < directors_database.length do 
#   #   result[directors_database[i][:name]] = gross_for_director(director_data)
#   #   i += 1
#   # end
#   # return result
  
# end



def directors_totals(nds)
  result = {}
  dir_name = []
  total_gross = [] 
  director_data = total_gross
  
  i = 0 
  while i < nds.length do 
    movie_total = 0 
    dir_name << nds[i][:name]
    j = 0 
      while j < nds[i][:movies].length
      movie_total = movie_total + nds[i][:movies][j][:worldwide_gross]
      j +=1 
    end 
    total_gross << movie_total
    i+=1 
  end
  
  k = 0 
  while k < dir_name.length 
    result[dir_name[k]] = total_gross[k]
    k+=1 
  end 
  

result
end