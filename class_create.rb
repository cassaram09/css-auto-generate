#This code takes in css class declarations and spits out divs with the classes attached

def array_build
  array = [] 
  i = 0
  until i == 5
    array << ".hp#{i}"
    array << ".hs1#{i}"
    array << ".hs2#{i}"
    i += 1
  end
  array.sort!
end

def class_create
  array = array_build
  output = File.new( "class_create.txt","w+" )
  array.each do |x| 
    output << "<div class=\"#{x}\"></div>\n"
  end
  output.close
end

class_create

