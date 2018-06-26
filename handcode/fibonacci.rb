def recur_fib(n)
	acc = [0,1]
	f = ->(acc) {
		if acc.size = n
			acc
		else
			cur, last = acc.last(2)
			f.(acc + [cur + last])
		end
	}
	f.(acc)
end
recur_fib(12)
