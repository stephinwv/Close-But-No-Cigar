
 def lottery(my_num, winners)
  winning = []
  # Empty [] to be replaced with with result numbers that match my_num
  
  if winners.include?(my_num)
  # .include? method checks multiples times for values to be present each time while iterating over an array 
  
    winning << my_num
  # << in this case adds the numbers to the result array
  
    p "You Win!"
  else
    p "No match!"
  
  end

  p winning
end




def off_by_one(my_num, winners)
    off_by = []
   # empty [] to be replace with results from loop
   
    winners.each do |number|
# Executes code for each element in the array
   
    c = 0
    # initial counter
  
    i = 0
    # counter for index position
    
    h = number.length
    # returns the number of elements in the array

      h.times do
      # executes code for each number of elements
  
          if my_num[i] == number[i]
          #[i] reads the index position
  
              c+=1
            # adds one to the count
          end
  
          i+=1
          # moves to the next index position
  
      end
  
      if c==number.length-1
        # counter for off by one
  
        off_by << number

    end

    end
  print "soooo close"
  p off_by
end



