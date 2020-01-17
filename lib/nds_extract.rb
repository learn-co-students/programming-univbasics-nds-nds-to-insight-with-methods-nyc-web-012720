$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  count = 0
  worldwide_gross_total = 0
  while director_data[:movies].length > count
    worldwide_gross_total += director_data[:movies][count][:worldwide_gross]
    count += 1
  end
  return worldwide_gross_total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  name = []
  count1 = 0
  while nds.length > count1 
    name << nds[count1][:name]
    count1 += 1
  end
  count2 = 0
  while nds.length > count2
    result[name[count2]] = gross_for_director(nds[count2])
    count2 += 1
  end
  return result
  nil
end
