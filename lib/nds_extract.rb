$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def gross_for_director(director_data)
  
    total = 0 
    movie_index = 0 
    while movie_index<director_data[:movies].length do 
      
      total += (director_data[:movies][movie_index][:worldwide_gross])
      movie_index += 1
    end
  
    total 
end

def directors_totals(nds)
  result = {}
  
  row_index = 0
  total = 0 
  
  while row_index < (nds.length) do
    name = (nds[row_index][:name])
    movie_index = 0 
    while movie_index<nds[row_index][:movies].length do 
      
      total += (nds[row_index][:movies][movie_index][:worldwide_gross])
      movie_index += 1
    end
  
    result[name] = total
    total = 0 
    row_index +=1 
  end  
  result
  
end
