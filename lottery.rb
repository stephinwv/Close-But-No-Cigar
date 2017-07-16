
 def lottery(my_num, winners)
  winning = []
  # Empty [] to be replaced with with result numbers that match my_num
  if winners.include?(my_num)
  # .include? method checks multiples times for values to be present each time while iterating over an array 
    winning << my_num
  # << in this case adds the numbers to the result array
    p "You Win!"
  else
    p "No Way!"
  end
  winning
end




def off_by_one(my_num, winners)
    xarray = []
   # empty [] to be replace with results from loop
    winners.each do |number|
# Executes code for each element in the array
    i = 0
    # counter for index position
    c = 0
    # counter of results?
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
        xarray << number
    end

    end
  xarray
end



# def one_off(a,b)
#   index_p = 0 
#   count = 0
#   b.length.times do |index_p|
#   if a(index_p) == b[index_p]
#     count += 1
#   end 
#   index_p += 1
# end
# count == 3
# end