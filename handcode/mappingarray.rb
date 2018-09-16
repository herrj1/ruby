def recur_map(array, f)
	if array.empty?
		[]
	else
		head, tail = array.head_tail
		[f.(head)] + recur_map(tail, f)
	end
end

##example
recur_map([1,2,3,4,5,6], ->(elem){
	elem * elem
})
