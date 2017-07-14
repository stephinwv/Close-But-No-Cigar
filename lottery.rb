def winners(ticket, winning)
	winning = []
	winnum.each do |n|
		if n == ticket
			winning << ticket
		end
	end
   winning
end

