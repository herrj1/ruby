def recur_reduce(array, acc, f)
	if array.empty?
		acc
	else
		head, tail = array.head_tail
		recur_reduce(tail, f.(acc, head), f)
	end
end

#join array
recur_reduce(["Morales", "Doe", "Zuas"], "", ->(r, elem){
	"#{r} #{elem}".strip
})

#sum arrays
recur_reduce([1,3,4,5,6,6], 0, ->(r, elem){
	r + elem
})

#array longest string
recur_reduce(["Morales", "Doe", "Suzares"], "", ->(r, elem){
	r.length > elem.length ? r : elem
})

#count in array
recur_reduce(["Morales", "Doe", "Suzares"], 0, ->(r, elem){
	r + 1
})

#array map
recur_reduce([1,2,3,4,5,6], [], ->(r, elem){
	r + [elem * elem]
})