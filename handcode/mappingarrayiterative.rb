def iter_map(array, f)
	new_array = []
	array.each do |elem|
		new_array << f.(elem)
	end
	new_array
end

iter_map([1,2,3,4,5,6], ->(elem) {
	elem * elem
})
