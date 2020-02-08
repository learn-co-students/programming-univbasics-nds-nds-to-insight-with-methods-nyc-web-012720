$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_hash)
  gross_total = 0
  inner_counter = 0

    while inner_counter < director_hash[:movies].length do
      gross_total += director_hash[:movies][inner_counter][:worldwide_gross]
      inner_counter +=1
    end  

  gross_total

end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  
    result = {}
    counter = 0
    while counter < nds.length do
      key = nds[counter][:name]
      value = gross_for_director(nds[counter])
      counter += 1
    
      result[key] = value
    end
    
  result
end
