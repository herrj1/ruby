def recur_sum(array)
	if array.empty?
		0
	else
		head, tail = array.head_tail
		head + recur_sum(tail)
	end
end

recur_sum([2,3,4,5,6])