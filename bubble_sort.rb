def bubble_sort(sort_me)
	for i in (sort_me.length-1).downto(0)
		for j in 0...i
			swap(sort_me,j) if sort_me[j] > sort_me[j+1]
		end
	end
	return sort_me
end

def swap(sort_me,j)
	temp = sort_me[j+1]
	sort_me[j+1] = sort_me[j] 
	sort_me[j] = temp
end

initial = (0..9).to_a.shuffle
puts initial.to_s
puts bubble_sort(initial).to_s

