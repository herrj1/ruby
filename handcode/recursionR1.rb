def recur_fact(num)
	if num == 0 || num == 1
		1
	else
		num *  recur_fact(num -1)
	end
end

#example

recur_fact(3)